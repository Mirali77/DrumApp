import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6
import "pages"
import "D:/Users/Denis/Documents/DrumApp/DrumApp/DrumApp/src/DrumApp.cpp"

ApplicationWindow {
    initialPage: Component { MenuPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: Orientation.Landscape

    property Drums drumPreset;

    SoundEffect { id: clickSoundKick; source: StandardPaths.music + "/DrumSounds/Kick/" + drumPreset.sound(0) }
    SoundEffect { id: clickSoundSnare; source: StandardPaths.music + "/DrumSounds/Snare/" + drumPreset.sound(1) }
    SoundEffect { id: clickSoundTom; source: StandardPaths.music + "/DrumSounds/Tom/" + drumPreset.sound(2) }
    SoundEffect { id: clickSoundOpenHH; source: StandardPaths.music + "/DrumSounds/OpenHH/" + drumPreset.sound(3) }
    SoundEffect { id: clickSoundCloseHH; source: StandardPaths.music + "/DrumSounds/CloseHH/" + drumPreset.sound(4) }
    SoundEffect { id: clickSoundCrash; source: StandardPaths.music + "/DrumSounds/Crash/" + drumPreset.sound(5) }
}
