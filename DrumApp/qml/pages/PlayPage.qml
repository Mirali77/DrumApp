import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: playPage
    allowedOrientations: Orientation.Landscape

    Image {
        width: parent.width
        height: parent.height
        source: StandardPaths.pictures + "/Fonts/main_font.jpg"

        Text {
            text: "Play page"
            color: "white"
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: parent.top
            }
            font {
                bold: true
                pixelSize: 120
            }
        }
    }
}
