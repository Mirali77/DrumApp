import QtQuick 2.0
import Sailfish.Silica 1.0

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

}
