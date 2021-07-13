import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6
import DrumApp 1.0
import DrumTime 1.0
import "pages"

ApplicationWindow {
    initialPage: Component {MenuPage {}}
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: Orientation.Landscape

    property string soundTypeKick: "type1.wav";
    property string soundTypeSnare: "type1.wav";
    property string soundTypeTom: "type1.wav";
    property string soundTypeOpenHH: "type1.wav";
    property string soundTypeCloseHH: "type1.wav";
    property string soundTypeCrash: "type1.wav";
    property DrumList dList;
    property Time time;


    function changeProperty(drum) {
        var tmp = 0;
        switch (drum) {
        case "kick":
            tmp = soundTypeKick[4];
            tmp: tmp++;
            if (tmp === 6) tmp = 1;
            soundTypeKick = "type" + tmp + ".wav";
            break;
        case "snare":
            tmp = soundTypeSnare[4];
            tmp: tmp++;
            if (tmp === 6) tmp = 1;
            soundTypeSnare = "type" + tmp + ".wav";
            break;
        case "tom":
            tmp = soundTypeTom[4];
            tmp: tmp++;
            if (tmp === 6) tmp = 1;
            soundTypeTom = "type" + tmp + ".wav";
            break;
        case "openhh":
            tmp = soundTypeOpenHH[4];
            tmp: tmp++;
            if (tmp === 6) tmp = 1;
            soundTypeOpenHH = "type" + tmp + ".wav";
            break;
        case "closehh":
            tmp = soundTypeCloseHH[4];
            tmp: tmp++;
            if (tmp === 6) tmp = 1;
            soundTypeCloseHH = "type" + tmp + ".wav";
            break;
        case "crash":
            tmp = soundTypeCrash[4];
            tmp: tmp++;
            if (tmp === 6) tmp = 1;
            soundTypeCrash = "type" + tmp + ".wav";
            break;
        }
    }

    function recording() {
        time.startTimer();
    }

    SoundEffect { id: clickSoundKick; source: StandardPaths.music + "/DrumSounds/Kick/" + soundTypeKick; }
    SoundEffect { id: clickSoundSnare; source: StandardPaths.music + "/DrumSounds/Snare/" + soundTypeSnare; }
    SoundEffect { id: clickSoundTom; source: StandardPaths.music + "/DrumSounds/Tom/" + soundTypeTom; }
    SoundEffect { id: clickSoundOpenHH; source: StandardPaths.music + "/DrumSounds/OpenHH/" + soundTypeOpenHH; }
    SoundEffect { id: clickSoundCloseHH; source: StandardPaths.music + "/DrumSounds/CloseHH/" + soundTypeCloseHH; }
    SoundEffect { id: clickSoundCrash; source: StandardPaths.music + "/DrumSounds/Crash/" + soundTypeCrash; }
}
