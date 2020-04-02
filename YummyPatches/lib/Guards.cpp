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


//---------Guard---------//

Guard::Guard()
{
    //constraints{};
}
void Guard::append(ref<Expr> & expr)
{
    constraints.addConstraint(expr);
}

//~~~~~~~~~Guard~~~~~~~~~//


//---------SMTResult---------//

//~~~~~~~~~SMTResult~~~~~~~~~//


//---------Lemma---------//

//~~~~~~~~~Lemma~~~~~~~~~//


//---------ProofObl---------//

//~~~~~~~~~ProofObl~~~~~~~~~//


