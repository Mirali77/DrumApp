import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: menuPage
    allowedOrientations: Orientation.Landscape

    Image {
        width: parent.width
        height: parent.height
        source: StandardPaths.pictures + "/Fonts/main_font.jpg"

        Text {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: parent.top
            }
            font {
                bold: true
                pixelSize: 120
            }

            color: "white"
            text: "Drum Application"
        }

        Rectangle {
            anchors {
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
            radius: 100
            width: 400
            height: 200
            color: "white"
            border { color: "black"; width: 5 }

            Rectangle {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    bottom: parent.bottom
                }
                color: "black"
                width: 5
            }

            MouseArea {
                anchors {
                    right: parent.horizontalCenter
                    left: parent.left
                    top: parent.top
                    bottom: parent.bottom
                }
                onClicked: {
                    var dialog = pageStack.push(Qt.resolvedUrl(("PlayPage.qml")));
                }
            }
            MouseArea {
                anchors {
                    right: parent.right
                    left: parent.horizontalCenter
                    top: parent.top
                    bottom: parent.bottom
                }
                onClicked: {
                    var dialog = pageStack.push(Qt.resolvedUrl(("SettingsPage.qml")));
                }
            }
        }

        // var dialog = pageStack.push(Qt.resolvedUrl(("SecondPage.qml")));
    }
}
