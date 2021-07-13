#include <QtQuick>
#include <sailfishapp.h>
#include "DrumList.h"
#include "time.h"

int main(int argc, char *argv[]) {
    qmlRegisterType<DrumList>("DrumApp", 1, 0, "DrumList");
    qmlRegisterType<Time>("DrumTime", 1, 0, "Time");
    return SailfishApp::main(argc, argv);
}
