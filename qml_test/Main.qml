import QtQuick
import "control"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    TitleBar {
        width: parent.width
        height: 32
        color: "#f3f3f3"
    }
}
