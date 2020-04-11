#ifndef GUARDS
#define GUARDS

// stl
#include <vector>
#include <set>
#include <algorithm>
// klee
#include "klee/util/Ref.h"
#include "klee/Expr/Expr.h"
#include "klee/Expr/Constraints.h"
#include "klee/ExecutionState.h"

using namespace klee;

namespace yummy
{
    class Lemma;
    class ProofQuery;
    class Store;
    class Level;
    class SMTResult;


    template <typename Obj>
    struct RefComparer
    {
        bool operator() (const ref<Obj> & lhs, const ref<Obj> & rhs) const
        {
            // silly compare
            return uint64_t(lhs.get()) < uint64_t(rhs.get());
        }
    };

    template <typename Obj1, typename Obj2>
    struct PaiRefComparer
    {
        typedef std::pair< ref<Obj1>, ref<Obj2> > PairObj;
        bool operator() (const PairObj & lhs, const PairObj & rhs) const
        {
            // silly lexicographical compare
            return  uint64_t(lhs.first.get()) <  uint64_t(rhs.first.get()) ||
                    (uint64_t (lhs.first.get()) == uint64_t(rhs.first.get()) &&
                     uint64_t(lhs.second.get()) < uint64_t(rhs.second.get()));
        }
    };


    using cIter         = ConstraintManager::const_iterator;

    using Constraint    = ref<ConstraintManager>;

  //using RhoPair       = std::pair< ref< ConstraintManager>, ref<ExecutionState> >;

    using SigmTy        = std::set < ref<Lemma>,
                          RefComparer<Lemma> >;
    using RhoTy         = std::set < ref<Store>,
                          RefComparer<Store> >;
    using QueryTy       = std::set < ref<ProofQuery>,
                          RefComparer<ProofQuery> >;
    using VerStateTy    = std::map < int, ref<Level> >;
}


namespace yummy
{
        // returns a constraint manager with T or F.
    Constraint defaultConstraint(bool);
        // returns false if some of the new Exprs are false Constants
    bool add(ConstraintManager & property, cIter, cIter);
        // returns false if the Expr is false Constant
    bool add(ConstraintManager & property, const ref<Expr> &);
        // TODO: may be, we should also check satisfiability here?


    class Lemma
    {
        friend class Level;
    public:
            // sets the default value
        Lemma();
        explicit Lemma(const Constraint &);

        static ref<Lemma> defaultLemma();
            // add things to *this. Don't duplicate Exprs
        void addExpr(const ref<Expr> &);
        void add(const std::vector<ref<Expr>> &);
        void add(const Constraint &);
        void add(const ref<Lemma> &);

        ref<Lemma> operator+=(const ref<Expr> &);
        ref<Lemma> operator+=(const Constraint &);
        ref<Lemma> operator+=(const ref<Lemma> &);
        friend ref<Lemma> operator+(const ref<Lemma> &, const ref<Lemma> &);

    public:
        class ReferenceCounter _refCount;   // for klee/util/Ref.h
    private:
        Constraint property;
    };



    // Proof Obligation
    class ProofQuery
    {
        friend class Level;
    public:
        ProofQuery(): level(0), property(nullptr) {}
            // fills with a property. If there's no
            // property given, creates a T property
        explicit ProofQuery(unsigned, Constraint prop = nullptr);
        static ref<ProofQuery> defaultQuery(unsigned);

        void add(const ref<ProofQuery> &);

        // also checks if the Queries have the same level. If not, does nothing
        ref<ProofQuery> operator+=(const ref<ProofQuery> &);
        friend ref<ProofQuery> operator+(const ref<ProofQuery> &, const ref<ProofQuery> &);

    public:
        unsigned level;                     //b
        class ReferenceCounter _refCount;   // for klee/util/Ref.h
    private:
        Constraint property;
    };



    // a class interacting with Executor. Used in rho
    class Store
    {
        friend class Level;
    public:
        Store() = default;

        static ref<Store> defaultStore();

    public:
        class ReferenceCounter _refCount;
        // ? ref<ExecutionState> state; ?
    };


    class Level
    {
    public:
        Level() = default;
        explicit Level(unsigned);

        // returns Level with default values of sigma, xi
        static ref<Level> defaultLevel(unsigned);

        SigmTy*  getSigm() { return &sigma; }
        RhoTy*   getRho()  { return &rho; }
        QueryTy* getQ()    { return &Q; }

    public:
        class ReferenceCounter _refCount; // for klee/util/Ref.h
    private:
        SigmTy  sigma;
        RhoTy   rho;
        QueryTy Q;
    };


    class SMTResult
    {
    public:
        bool isUnsat;
        class ReferenceCounter _refCount; // for klee/util/Ref.h
    private:

    };


} //END yummy


#endif //LEMMAS