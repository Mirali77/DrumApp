import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: settingsPage
    allowedOrientations: Orientation.Landscape

    Image {
        width: parent.width
        height: parent.height
        source: StandardPaths.pictures + "/Fonts/MenuFontBlur.jpg"
    }

    Image {
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
        }
        source: StandardPaths.pictures + "/Fonts/Settings.png"
    }

    Row {
        anchors {
           horizontalCenter: parent.horizontalCenter
           bottom: parent.bottom
           bottomMargin: 50
        }

        spacing: 50

        Image {
            source: StandardPaths.pictures + "/Buttons/KickButton.png"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    changeProperty("kick");
                    clickSoundKick.play();
                }
            }
        }
        Image {
            source: StandardPaths.pictures + "/Buttons/SnareButton.png"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    changeProperty("snare");
                    clickSoundSnare.play();
                }
            }
        }
        Image {
            source: StandardPaths.pictures + "/Buttons/TomButton.png"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    changeProperty("tom");
                    clickSoundTom.play();
                }
            }
        }
        Image {
            source: StandardPaths.pictures + "/Buttons/OpenHHButton.png"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    changeProperty("openhh");
                    clickSoundOpenHH.play();
                }
            }
        }
        Image {
            source: StandardPaths.pictures + "/Buttons/CloseHHButton.png"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    changeProperty("closehh");
                    clickSoundCloseHH.play();
                }
            }
        }
        Image {
            source: StandardPaths.pictures + "/Buttons/CrashButton.png"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    changeProperty("crash");
                    clickSoundCrash.play();
                }
            }
        }
    }
}
