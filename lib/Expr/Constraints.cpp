//===-- Constraints.cpp ---------------------------------------------------===//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "klee/Expr/Constraints.h"

#include "klee/Expr/ExprPPrinter.h"
#include "klee/Expr/ExprVisitor.h"
#include "klee/Internal/Module/KModule.h"
#include "klee/OptionCategories.h"

#include "llvm/IR/Function.h"
#include "llvm/Support/CommandLine.h"

// yummy
#include "klee/Expr/ExprUtil.h"
#include "ConfigConstants.h"

#include <map>
#include <string>
#include <fstream>
#include <ctime>
#include <ConfigConstants.h>

using namespace klee;

namespace {
llvm::cl::opt<bool> RewriteEqualities(
    "rewrite-equalities",
    llvm::cl::desc("Rewrite existing constraints when an equality with a "
                   "constant is added (default=true)"),
    llvm::cl::init(true),
    llvm::cl::cat(SolvingCat));
}

class ExprReplaceVisitor : public ExprVisitor {
private:
  ref<Expr> src, dst;

public:
  ExprReplaceVisitor(ref<Expr> _src, ref<Expr> _dst) : src(_src), dst(_dst) {}

  Action visitExpr(const Expr &e) {
    if (e == *src.get()) {
      return Action::changeTo(dst);
    } else {
      return Action::doChildren();
    }
  }

  Action visitExprPost(const Expr &e) {
    if (e == *src.get()) {
      return Action::changeTo(dst);
    } else {
      return Action::doChildren();
    }
  }
};

class ExprReplaceVisitor2 : public ExprVisitor {
private:
  const std::map< ref<Expr>, ref<Expr> > &replacements;

public:
  ExprReplaceVisitor2(const std::map< ref<Expr>, ref<Expr> > &_replacements) 
    : ExprVisitor(true),
      replacements(_replacements) {}

  Action visitExprPost(const Expr &e) {
    std::map< ref<Expr>, ref<Expr> >::const_iterator it =
      replacements.find(ref<Expr>(const_cast<Expr*>(&e)));
    if (it!=replacements.end()) {
      return Action::changeTo(it->second);
    } else {
      return Action::doChildren();
    }
  }
};

bool ConstraintManager::rewriteConstraints(ExprVisitor &visitor) {
  ConstraintManager::constraints_ty old;
  bool changed = false;

  constraints.swap(old);
  for (ConstraintManager::constraints_ty::iterator 
         it = old.begin(), ie = old.end(); it != ie; ++it) {
    ref<Expr> &ce = *it;
    ref<Expr> e = visitor.visit(ce);

    if (e!=ce) {
      addConstraintInternal(e); // enable further reductions
      changed = true;
    } else {
      constraints.push_back(ce);
    }
  }

  return changed;
}

void ConstraintManager::simplifyForValidConstraint(ref<Expr> e) {
  // XXX 
}

ref<Expr> ConstraintManager::simplifyExpr(ref<Expr> e) const {
  if (isa<ConstantExpr>(e))
    return e;

  std::map< ref<Expr>, ref<Expr> > equalities;
  
  for (ConstraintManager::constraints_ty::const_iterator 
         it = constraints.begin(), ie = constraints.end(); it != ie; ++it) {
    if (const EqExpr *ee = dyn_cast<EqExpr>(*it)) {
      if (isa<ConstantExpr>(ee->left)) {
        equalities.insert(std::make_pair(ee->right,
                                         ee->left));
      } else {
        equalities.insert(std::make_pair(*it,
                                         ConstantExpr::alloc(1, Expr::Bool)));
      }
    } else {
      equalities.insert(std::make_pair(*it,
                                       ConstantExpr::alloc(1, Expr::Bool)));
    }
  }

  return ExprReplaceVisitor2(equalities).visit(e);
}

void ConstraintManager::addConstraintInternal(ref<Expr> e) {
  // rewrite any known equalities and split Ands into different conjuncts

  switch (e->getKind()) {
  case Expr::Constant:
    assert(cast<ConstantExpr>(e)->isTrue() && 
           "attempt to add invalid (false) constraint");
    break;
    
    // split to enable finer grained independence and other optimizations
  case Expr::And: {
    BinaryExpr *be = cast<BinaryExpr>(e);
    addConstraintInternal(be->left);
    addConstraintInternal(be->right);
    break;
  }

  case Expr::Eq: {
    if (RewriteEqualities) {
      // XXX: should profile the effects of this and the overhead.
      // traversing the constraints looking for equalities is hardly the
      // slowest thing we do, but it is probably nicer to have a
      // ConstraintSet ADT which efficiently remembers obvious patterns
      // (byte-constant comparison).
      BinaryExpr *be = cast<BinaryExpr>(e);
      if (isa<ConstantExpr>(be->left)) {
	ExprReplaceVisitor visitor(be->right, be->left);
	rewriteConstraints(visitor);
      }
    }
    constraints.push_back(e);
    break;
  }
    
  default:
    constraints.push_back(e);
    break;
  }
}

void ConstraintManager::addConstraint(ref<Expr> e) {
  e = simplifyExpr(e);
  addConstraintInternal(e);
}

// yummy
// lexicographically
int ConstraintManager::compare(const ConstraintManager & rhs)
{
    int value = 0;
    for(auto it1 = this->begin(), it2 = rhs.begin();
        it1 != this->end() && it2 != rhs.end();
        it1++, it2++)
    {
        value = it1->compare(*it2);
        if(value != 0)
        {
            return value;
        }
    }

    if(this->size() > rhs.size())
    {
        return 1;
    }
    if(this->size() == rhs.size())
    {
        return 0;
    }
    return -1;
}

ConstraintManager::~ConstraintManager()
{
    // ConfigConstants.h
    if(yummy::PRINT_CONSTRAINTS)
    {
        std::string S;
        llvm::raw_string_ostream os(S);
        std::ofstream out_log;
        for(auto expr = constraints.begin(); expr < constraints.end(); expr++)
        {
            /// Check findReads

            os.str().clear();
            os << "EXPR:\n" << *expr << "\n\n";
            std::vector< ref<ReadExpr> > result_upd, result_no_upd;
            klee::findReads(*expr, true, result_upd);
            klee::findReads(*expr, false, result_no_upd);

            os << "Visiting updates:\n\n";
            for(auto it = result_upd.begin(); it < result_upd.end(); it++)
            {
                os << *it << "\n\n";
            }
            os << "Not visiting updates:\n\n";
            for(auto it = result_no_upd.begin(); it < result_no_upd.end(); it++)
            {
                //os << *it << "\n\n";
                static_cast<ref<Expr>>(*it) = ConstantExpr::create(123, Expr::Int32);
            }
            os << "rebuilt?\n" << *expr << "\n\n";
            os << "\n---------------------------------\n\n\n";

            out_log.open("find_reads_log.txt", std::fstream::app);
            out_log << os.str();
            out_log.close();


            /// check findSymbolicObjects

            os.str().clear();
            os << "EXPR:\n" << *expr << "\n\n";
            std::vector<const Array*> result;
            klee::findSymbolicObjects(*expr, result);

            for(auto it = result.begin(); it < result.end(); it++)
            {
                os << int(it - result.begin()) << ": " << (*it)->name << "\t";
            }
            os << "\n\n";

            out_log.open("find_symb_log.txt", std::fstream::app);
            out_log << os.str();
            out_log.close();
        }


        /*std::string out;
        llvm::raw_string_ostream infoout(out);
        ExprPPrinter::printConstraints(infoout, *this);

        std::ofstream out_log("out_log.txt", std::fstream::app);
        std::time_t result = std::time(nullptr);
        out_log << infoout.str() << "\n---------------------------------\n";
        out_log.close();*/
    }
    constraints.clear();
}
