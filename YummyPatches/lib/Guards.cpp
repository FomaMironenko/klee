//
// Created by fomius2000 on 31.03.20.
//

//klee
#include "klee/util/Ref.h"
#include "klee/Expr/Expr.h"
#include "klee/Expr/Constraints.h"
// yummy

#include "Guards.h"

using namespace klee;
using namespace yummy;


Constraint defaultConstraint(bool val)
{
    ConstraintManager *tmp = new ConstraintManager;
    tmp->addConstraint(ConstantExpr::alloc(int(val), Expr::Bool));
    return Constraint(tmp);
}

bool add(ConstraintManager & property, const ref<Expr> & expr)
{
        // to avoid assertion in addConstraint / addConstraintInit
    if (expr->isZero()) // TODO: should we check isFalse() here?
    {
        return false;
    }
        // TODO: how to check conjunctions
    if( find(property.begin(), property.end(), expr) == property.end() )
    {
        property.addConstraint(expr);
    }
    return true;
}

bool add(ConstraintManager & property, cIter lhs, cIter rhs)
{
    std::set<unsigned> hashSet;
    for(auto it = property.begin(); it != property.end(); it++)
    {
        hashSet.insert((*it)->computeHash());
    }

    for(auto it = lhs; it != rhs; it++)
    {
        // to avoid assertion in addConstraint
        if ((*it)->isZero())
        {
            // TODO: how should we handle this case?
            return false;
        }


        if (hashSet.insert((*it)->computeHash()).second) // new hash
        {
            property.addConstraint(*it);
        } else { // hash already exists
            ::add(property, *it);
        }
    }
    return true;
}


//---------Lemma---------//

Lemma::Lemma()
{
    property = ::defaultConstraint(true);
}

Lemma::Lemma(const Constraint & _property): property()
{
    *property = *_property;
}

ref<Lemma> Lemma::defaultLemma()
{
    ref<Lemma> lem(new Lemma);
    return lem;
}

// TODO: how to handle case ::add == false
void Lemma::addExpr(const ref<Expr> & expr)
{
    ::add(*property.get(), expr);
}
void Lemma::add(const std::vector< ref<Expr> > & other)
{
    ::add(*property.get(), other.cbegin(), other.cend());
}
void Lemma::add(const Constraint & other)
{
    ::add(*property.get(), other->begin(), other->end());
}
void Lemma::add(const ref<Lemma> & other)
{
    ::add(*property.get(), other->property->begin(), other->property->end());
}

ref<Lemma> Lemma::operator+=(const ref<Expr> & expr)
{
    this->addExpr(expr);
    return ref<Lemma>(this);
}
ref<Lemma> Lemma::operator+=(const Constraint & other)
{
    this->add(other);
    return ref<Lemma>(this);
}
ref<Lemma> Lemma::operator+=(const ref<Lemma> & other)
{
    this->add(other);
    return ref<Lemma>(this);
}

ref<Lemma> yummy::operator+(const ref<Lemma> & lhs, const ref<Lemma> & rhs) {
    Lemma *sum = new Lemma(lhs->property);
    *sum += rhs;
    return ref<Lemma>(sum);
}

//~~~~~~~~~Lemma~~~~~~~~~//



//---------ProofQuery---------//

ProofQuery::ProofQuery(unsigned b, Constraint prop): level(b)
{
    if(prop != nullptr)
    {
        *property = *prop;
        return;
    }
    property = ::defaultConstraint(true);
}

ref<ProofQuery> ProofQuery::defaultQuery(unsigned b)
{
    ref<ProofQuery> que(new ProofQuery(b));
    return que;
}

void ProofQuery::add(const ref<ProofQuery> & other)
{
    if(this->level != other->level)
    {
        return;
    }
    ::add(*property, other->property->begin(), other->property->end());
}

ref<ProofQuery> ProofQuery::operator+=(const ref<ProofQuery> & other)
{
    add(other);
    return ref<ProofQuery>(this);
}

ref<ProofQuery> yummy::operator+(const ref<ProofQuery> & lhs, const ref<ProofQuery> & rhs)
{
    assert(lhs->level == rhs->level && "wrong parametrs");
    ProofQuery *sum = new ProofQuery(lhs->level, lhs->property);
    *sum += rhs;
    return ref<ProofQuery>(sum);
}

//~~~~~~~~~ProofQuery~~~~~~~~~//



//---------Store---------//

ref<Store> Store::defaultStore()
{
    // temporary
    return ref<Store>(nullptr);
}

//~~~~~~~~~Store~~~~~~~~~//


//---------Level---------//

Level::Level(unsigned b): sigma(), rho(), Q()
{
    sigma.insert(Lemma::defaultLemma());
    rho.insert(Store::defaultStore());
    Q.insert(ProofQuery::defaultQuery(b));
}

ref<Level> Level::defaultLevel(unsigned b)
{
    ref<Level> lev(new Level(b));
    return lev;
}

//~~~~~~~~~Level~~~~~~~~~//


//---------SMTResult---------//

//~~~~~~~~~SMTResult~~~~~~~~~//


