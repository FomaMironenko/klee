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
    class ExecAction;
    class NonExecAction;
    class Store; // ??

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
        using PairObj = std::pair< ref<Obj1>, ref<Obj2> >;
        bool operator() (const PairObj & lhs, const PairObj & rhs) const
        {
            // silly lexicographical compare
            return  uint64_t (lhs.first.get()) <  uint64_t(rhs.first.get()) ||
                   (uint64_t (lhs.first.get()) == uint64_t(rhs.first.get()) &&
                           uint64_t(lhs.second.get()) < uint64_t(rhs.second.get()));
        }
    };

    using RhoPair       = std::pair< ref<Guard>, ref<Store> >;

    using Neighbours    = std::vector < ref<Edge> >;

    using SigmTy        = std::set < ref<Lemma>,
                                     RefComparer<Lemma> >;
    using RhoTy         = std::set < RhoPair,
                                     PaiRefComparer<Guard, Store> >;
    using QueryTy       = std::set < ref<ProofQuery>,
                                     RefComparer<ProofQuery> >;
    using VerStateTy    = std::map < int, ref<Level> >;
}

namespace yummy
{

    // represents   rho + sigma + proof of obligation
    // for a particular level (b)
    class Level
    {
    public:
        Level() = default;
        // returns Level with default values of sigma, xi
        static ref<Level> defaultLevel();
    private:
        static RhoPair defaultRho();

    public:
        class ReferenceCounter _refCount; // for klee/util/Ref.h
    private:
        SigmTy  sigma;
        RhoTy   rho;
        QueryTy Q;
    };


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
        ref<Guard> guard;
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