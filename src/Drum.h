#ifndef DRUMTYPES_H
#define DRUMTYPES_H
#include <QString>
#include "time.h"

struct Drum {
    Drum(QString drum, int time);
    QString drum;
    int time;
};


#endif // DRUMTYPES_H
