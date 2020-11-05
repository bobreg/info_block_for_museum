import QtQuick 2.0
import QtMultimedia 5.12

Rectangle{
    width: 640
    height: 480
    color: "black"

    Video{
        id: vide
        source: "video2.avi"
        anchors.fill: parent
    }
}
