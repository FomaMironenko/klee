#ifndef KLEE_COMPOSITION_H
#define KLEE_COMPOSITION_H

// klee
#include "klee/util/Ref.h"
#include "klee/Expr/Expr.h"
#include "klee/Expr/Constraints.h"
#include "klee/ExecutionState.h"


using namespace klee;

namespace yummy
{
    class Composer;
}

namespace yummy
{
    class Composer
    {
        Composer(ref<ExecutionState> & P1, ref<ExecutionState> & P2):
            P1(P1), P2(P2) {    }

        // substitutes Exprs from P1 into ReadExprs of \arg
        ref<Expr> rebuild(const ref<Expr> & );
        ref<ConstraintManager> rebuild(const ref<ConstraintManager> & );

        ref<ExecutionState> P1;
        ref<ExecutionState> P2;
    };
}


#endif //KLEE_COMPOSITION_H
