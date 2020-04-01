//
// Created by fomius2000 on 31.03.20.
//

//klee
#include "klee/util/Ref.h"
// yummy
#include "States.h"

using namespace klee;
using namespace yummy;


//---------Level---------//

//~~~~~~~~~Level~~~~~~~~~//


//---------Vertex---------//

bool Vertex::check_level(int b)
{
    return levels.find(b) == levels.end();
}
ref<Level> Vertex::get_level(int b)
{
    auto it = levels.find(b);
    return ( it == levels.end() ) ? it->second : nullptr;
}

//~~~~~~~~~Vertex~~~~~~~~~//


//---------Edge---------//

//~~~~~~~~~Edge~~~~~~~~~//


//---------EdgeAction---------//

//~~~~~~~~~EdgeAction~~~~~~~~~//


//---------Store---------//

//~~~~~~~~~Store~~~~~~~~~//

