import QtQuick 2.0
import Sailfish.Silica 1.0
import "C:/Users/user/DrumApp/qml/DrumApp.qml"

Page {
    id: settingsPage
    allowedOrientations: Orientation.Landscape

    Image {
        width: parent.width
        height: parent.height
        source: StandardPaths.pictures + "/Fonts/MenuFontBlur.jpg"
    }

    Row {
        anchors.centerIn: parent
        height: parent.height - 200
        spacing: 25
        Rectangle {
            color: "#7FFFD4"
            width: 150; height: parent.height
            radius: 30
            border { color: "white"; width: 5 }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    soundTypeKick = "type2"
                    clickSoundKick.play()
                }
            }
        }
        Rectangle {
            color: "#40E0D0"
            width: 150; height: parent.height
            radius: 30
            border { color: "white"; width: 5 }
        }
        Rectangle {
            color: "#48D1CC"
            width: 150; height: parent.height
            radius: 30
            border { color: "white"; width: 5 }
        }
        Rectangle {
            color: "#00CED1"
            width: 150; height: parent.height
            radius: 30
            border { color: "white"; width: 5 }
        }
        Rectangle {
            color: "#20B2AA"
            width: 150; height: parent.height
            radius: 30
            border { color: "white"; width: 5 }
        }
        Rectangle {
            color: "#008B8B"
            width: 150; height: parent.height
            radius: 30
            border { color: "white"; width: 5 }
        }
    }
}
