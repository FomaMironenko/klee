#ifndef STATES
#define STATES

#include "Lemmas.h"

#include <vector>


using Children = vector<Vertex*>;

namespace yummy
{
    class Vertex;
    class Edge;
    class Action;

    // BasicBlock?
    class Vertex
    {


        Vertex*  parent;
        Children children;

        Lemma*    lemma;
        ProofObl* query;
    };


    class Edge
    {
        Edge(Vertex* start, Vertex* end): start(start), end(end)
        {   }

        void SetAction();
        void LemmaPropagation();
        void StepForward();

        Vertex *start, *end;
        Action action;
    };


    class Action
    {
        //inside information
    };


} //END yummy

#endif // STATES