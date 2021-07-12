#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include <iostream>
#include <string>
using namespace std;

class Drums {
private:
    // 0 - kick
    // 1 - snare
    // 2 - tom
    // 3 - openHH
    // 4 - closeHH
    // 5 - crash
    int drum[6];
public:
    Drums() {
        for (int i = 0; i < 6; i++)
            drum[i] = 0;
    }
    Drums (const Drums &other) {
        for (int i = 0; i < 6; i++)
            drum[i] = other.drum[i];
    }
    ~Drums() {}

    void changeSound(int d) { drum[d]++; drum[d] = drum[d] % 6; }
    string sound(int s) {
        string str = "type" + to_string(drum[s]) + ".wav";
        return str;
    }
};

int main(int argc, char *argv[]) {
    qRegisterMetaType<Drums>();
    return SailfishApp::main(argc, argv);
}
