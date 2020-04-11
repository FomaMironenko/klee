#ifndef STATES
#define STATES

// stl
#include <vector>
#include <set>
#include <map>
// klee
#include "klee/util/Ref.h"
#include "klee/Expr/Constraints.h"
// yummy
#include "Guards.h"


namespace yummy
{
    class Vertex;
    class Edge;
    class EdgeAction;
    class ExecAction;
    class NonExecAction;

    using Neighbours    = std::vector < ref<Edge> >;
}

namespace yummy
{
    // represents   rho + sigma + proof of obligation
    // for a particular level (b)


    class Vertex
    {
    public:
        explicit Vertex(bool startVer = false): isStartVertex(startVer)
        {   }

        // true if there exists such level
        bool check_level(int);
        ref<Level> get_level(int);

        // argument must belong to children
        ref<Vertex> access_child(ref<Edge> &);
        // argument must belong to parents
        ref<Vertex> access_parent(ref<Edge> &);

    public:
        const bool isStartVertex;
        class ReferenceCounter _refCount;   // for klee/util/Ref.h
        ~Vertex() = default;
    private:
        Neighbours parents;
        Neighbours children;
        // if there is no key k in levels.keys it means that
        // it must be set with the default value when calling
        // get_level() and new element will be added to levels
        VerStateTy levels;
    };


    class Edge
    {
    public:
        Edge(Vertex* start, Vertex* end): start(start), end(end)
        {   }

        void SetAction();
        void LemmaPropagation();
        void StepForward();

    public:
        class ReferenceCounter _refCount; // for klee/util/Ref.h

        ref<Vertex> start, end;
        ref<EdgeAction> action;
    };


    class EdgeAction
    {
    public:
        EdgeAction() = default;
        ref<Vertex> get_exit_node();

    public:
        class ReferenceCounter _refCount;   // for klee/util/Ref.h
        enum {Call, NotCall} actTy;
    private:
        ref<ConstraintManager> guard;
        ref<Edge>  edge;                    // also accesses exitNodeForCall

    };


    class ExecAction: public EdgeAction
    {
    public:
        ExecAction() { actTy = Call; }
        void execute();
    };


    class NonExecAction: public EdgeAction
    {
    public:
        NonExecAction() { actTy = NotCall; }
    };

} //END yummy


#endif // STATES
