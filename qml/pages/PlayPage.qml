import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

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


    Row {
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
        }
        spacing: 0
        Rectangle {
            id: recordingButton
            color: "white"
            radius: 100
            height: 100
            width: 100
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    recording();
                }
            }
        }
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

    MouseArea {
        id: snare
        anchors {
            fill: parent
            topMargin: 43 * parent.height / 72
            bottomMargin: parent.height / 36
            leftMargin: 77 * parent.width / 256
            rightMargin: 125 * parent.width / 256
        }
        onClicked: clickSoundSnare.play()
    }

    MouseArea {
        id: tom1
        anchors {
            fill: parent
            topMargin: 145 * parent.height / 720
            bottomMargin: 31 * parent.height / 72
            leftMargin: 35 * parent.width / 128
            rightMargin: 33 * parent.width / 64
        }
        onClicked: clickSoundTom.play()
    }

    MouseArea {
        id: tom2
        anchors {
            fill: parent
            topMargin: 145 * parent.height / 720
            bottomMargin: 31 * parent.height / 72
            leftMargin: 35 * parent.width / 64
            rightMargin: parent.width / 4
        }
        onClicked: clickSoundTom.play()
    }

    MouseArea {
        id: openHH
        anchors {
            fill: parent
            topMargin: 39 * parent.height / 72
            bottomMargin: parent.height / 18
            leftMargin: 19 * parent.width / 256
            rightMargin: 179 * parent.width / 256
        }
        onClicked: clickSoundOpenHH.play()
    }

    MouseArea {
        id: closeHH
        anchors {
            fill: parent
            bottomMargin: 19 * parent.height / 36
            rightMargin: 945 * parent.width / 1280
        }
        onClicked: clickSoundCloseHH.play()
    }

    MouseArea {
        id: crash
        anchors {
            fill: parent
            topMargin: parent.height / 7
            bottomMargin: parent.height / 2
            leftMargin: 965 * parent.width / 1280
        }
        onClicked: clickSoundCrash.play()
    }
}
