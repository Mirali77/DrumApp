import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6
import "C:/Users/user/DrumApp/qml/DrumApp.qml"

Page {
    id: playPage
    allowedOrientations: Orientation.Landscape

    Image {
        width: parent.width
        height: parent.height
        source: StandardPaths.pictures + "/Fonts/FloorFont.jpg"
    }

    Image {
        width: parent.width
        height: parent.height
        source: StandardPaths.pictures + "/Drums/Drums.png"
    }

    MouseArea {
        id: kick
        anchors {
            fill: parent
            topMargin: 2 * parent.height / 3
            leftMargin: 413 * parent.width / 640
            rightMargin: 111 * parent.width / 640
        }
        onClicked: clickSoundKick.play()
    }
}
