#ifndef PROJECT_MASTERTANKMAIN_H
#define PROJECT_MASTERTANKMAIN_H

enum masterStates_e{
    INITALISING,
    EXPLORING,
    FECHING_OBJECT,
    FINISH,
    ALL_STATE_COUNT
};

extern masterStates_e masterTankState;

#endif //PROJECT_MASTERTANKMAIN_H
