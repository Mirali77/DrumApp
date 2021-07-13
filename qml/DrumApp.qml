import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6
import "pages"

ApplicationWindow {
    initialPage: Component { MenuPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: Orientation.Landscape

    property string soundTypeKick: "type1.wav";
    property string soundTypeSnare: "type1.wav";
    property string soundTypeTom: "type1.wav";
    property string soundTypeOpenHH: "type1.wav";
    property string soundTypeCloseHH: "type1.wav";
    property string soundTypeCrash: "type1.wav";

    SoundEffect { id: clickSoundKick; source: StandardPaths.music + "/DrumSounds/Kick/" + soundTypeKick }
    SoundEffect { id: clickSoundSnare; source: StandardPaths.music + "/DrumSounds/Snare/" + soundTypeSnare }
    SoundEffect { id: clickSoundTom; source: StandardPaths.music + "/DrumSounds/Tom/" + soundTypeTom }
    SoundEffect { id: clickSoundOpenHH; source: StandardPaths.music + "/DrumSounds/OpenHH/" + soundTypeOpenHH }
    SoundEffect { id: clickSoundCloseHH; source: StandardPaths.music + "/DrumSounds/CloseHH/" + soundTypeCloseHH }
    SoundEffect { id: clickSoundCrash; source: StandardPaths.music + "/DrumSounds/Crash/" + soundTypeCrash }
}
