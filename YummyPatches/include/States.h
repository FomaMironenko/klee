#ifndef STATES
#define STATES

// stl
#include <vector>
#include <set>
#include <map>
// klee
#include "klee/util/Ref.h"
// yummy
#include "Guards.h"



namespace yummy
{
    class Level;
    class Vertex;
    class Edge;
    class EdgeAction;
    class Store; // ??

    using Children      = std::vector < ref<Vertex> >;

    using SigmTy        = std::set < ref<Lemma> >;
    using XiTy          = std::set < std::pair< ref<Guard>, ref<Store> >>;
    using QueryTy       = std::set < ref<ProofQuery> >;

    using VerStateTy    = std::map < int, ref<Level> >;
}

namespace yummy
{

    // represents   rho + sigma + proof of obligation
    // for a particular level (b)
    class Level
    {
        Level() = default;

    public:
        class ReferenceCounter _refCount; // for klee/util/Ref.h
    private:
        SigmTy  sigma;
        XiTy    xi;
        QueryTy Q;
    };


    class Vertex
    {
    public:
        Vertex(bool startVer = false);

        // true if there exists such level
        bool check_level(int);
        ref<Level> get_level(int);

    public:
        const bool IsStartVertex;
        class ReferenceCounter _refCount;   // for klee/util/Ref.h

        ref<Vertex>  parent;
        Children children;

        VerStateTy levels;
    };


    class EdgeAction
    {
    public:
        EdgeAction();

    public:
        class ReferenceCounter _refCount; // for klee/util/Ref.h

        //inside information
    };


    class Edge
    {
    protected:
        Edge(Vertex* start, Vertex* end): start(start), end(end)
        {   }

        void SetAction();
        void LemmaPropagation();
        void StepForward();

    public:
        class ReferenceCounter _refCount; // for klee/util/Ref.h

        ref<Vertex> start, end;
        EdgeAction action;
    };


} //END yummy

#endif // STATES