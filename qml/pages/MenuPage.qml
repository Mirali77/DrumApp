import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: menuPage
    allowedOrientations: Orientation.Landscape

    Image {
        width: parent.width
        height: parent.height
        source: StandardPaths.pictures + "/Fonts/MenuFont.jpg"

        Image {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: parent.top
            }
            source: StandardPaths.pictures + "/Fonts/Drdrum.png"
        }

        Row {
            anchors {
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
                bottomMargin: parent.height / 36
            }
            spacing: 5

            Image {
                source: StandardPaths.pictures + "/Fonts/DrumIcon400px.png"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        var dialog = pageStack.push(Qt.resolvedUrl(("PlayPage.qml")));
                    }
                }
            }

            Image {
                source: StandardPaths.pictures + "/Fonts/SettingsIcon400px.png"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        var dialog = pageStack.push(Qt.resolvedUrl(("SettingsPage.qml")));
                    }
                }
            }
        }

        // var dialog = pageStack.push(Qt.resolvedUrl(("SecondPage.qml")));
    }
}
