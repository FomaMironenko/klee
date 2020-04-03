//
// Created by fomius2000 on 31.03.20.
//

//stl
#include<utility>
//klee
#include "klee/util/Ref.h"
// yummy
#include "States.h"

using namespace klee;
using namespace yummy;


//---------Level---------//

ref<Level> Level::defaultLevel()
{
    ref<Level> retVal(new Level);
    return retVal;
}

//~~~~~~~~~Level~~~~~~~~~//


//---------Vertex---------//

bool Vertex::check_level(int b)
{
    return levels.find(b) == levels.end();
}
ref<Level> Vertex::get_level(int b)
{
    auto it = levels.find(b);
    if(it != levels.end())
    {
        return it->second;
    }
    return levels[b] = Level::defaultLevel();
}

ref<Vertex> Vertex::access_child(ref<Edge> & edge)
{
    assert(edge->start.get() == this && "Wrong call");
    return edge->end;
}
ref<Vertex> Vertex::access_parent(ref<Edge> & edge)
{
    assert(edge->end.get() == this && "Wrong call");
    return edge->start;
}

//~~~~~~~~~Vertex~~~~~~~~~//


//---------Edge---------//

//~~~~~~~~~Edge~~~~~~~~~//


//---------EdgeAction---------//

//~~~~~~~~~EdgeAction~~~~~~~~~//


//---------ExecAction---------//

//~~~~~~~~~ExecAction~~~~~~~~~//


//---------NonExecAction---------//

//~~~~~~~~~NonExecAction~~~~~~~~~//


//---------Store---------//

//~~~~~~~~~Store~~~~~~~~~//

