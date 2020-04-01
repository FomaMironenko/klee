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
    class SMTReult;
    class Lemma;
    class ProofQuery;
}


namespace yummy
{

    class Guard
    {
    public:
        Guard() = default;
        // true if appended
        void append(ref<Expr> &);

    public:
        class ReferenceCounter _refCount; // for klee/util/Ref.h
    private:
        ConstraintManager constraints;
    };


    class SMTResult
    {
    public:
        bool isUnsat;
        class ReferenceCounter _refCount; // for klee/util/Ref.h
    private:

    };


    class Lemma
    {
    protected:

    public:
        class ReferenceCounter _refCount; // for klee/util/Ref.h
    };


    // Proof Obligation
    class ProofQuery
    {

    public:
        unsigned level; //b
        class ReferenceCounter _refCount; // for klee/util/Ref.h
    protected:
        Guard property;
    };


} //END yummy


#endif //LEMMAS