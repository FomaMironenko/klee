//
// Created by fomius2000 on 06.04.20.
//

#ifndef KLEE_CONFIGCONSTANTS_H
#define KLEE_CONFIGCONSTANTS_H

namespace yummy
{
    const bool PRINT_CONSTRAINTS =  true;       // ConstrainManager::~ConstraintManager
    const bool PRINT_VALUES      =  false;      // MemoryObject::~MemoryObject
    const bool PRINT_STATE       =  false;      // ObjectState::~ObjectState
    const bool PRINT_UPD_LIST    =  false;      // UpdateNode::UpdateNode
    const bool PRINT_UPD_NODE    =  false;      // UpdateList::~UpdateList
    const bool PRINT_READ_EXP    =  true;       // ReadExpr::~ReadExpr
}

#endif //KLEE_CONFIGCONSTANTS_H
