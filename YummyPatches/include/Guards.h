#ifndef GUARDS
#define GUARDS

// stl
#include <vector>
// klee
#include "klee/util/Ref.h"
#include "klee/Expr/Expr.h"
#include "klee/Expr/Constraints.h"

using namespace klee;


namespace yummy
{
    class Guard;
    class Lemma;
    class ProofQuery;
    class SMTReult;
}


namespace yummy
{

    class Guard
    {
        friend class Level;
    public:
        Guard();
        void append(ref<Expr> &);
        static ref<Guard> defaultGuard();

    public:
        class ReferenceCounter _refCount; // for klee/util/Ref.h
    private:
        ConstraintManager constraints;
    };


    class Lemma
    {
        friend class Level;
    public:
        // sets the default value
        Lemma();
        static ref<Lemma> defaultLemma();

    public:
        class ReferenceCounter _refCount;   // for klee/util/Ref.h
    private:
        Guard property;
    };


    // Proof Obligation
    class ProofQuery
    {
        friend class Level;
    public:

    public:
        unsigned level;                     //b
        class ReferenceCounter _refCount;   // for klee/util/Ref.h
    private:
        Guard property;
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