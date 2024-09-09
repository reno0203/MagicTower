/**
 * 标题栏
 */
import QtQuick
import QtQuick.Layouts
import MagicTower

Rectangle {
    property int btnPreferredWidth: 46
    property int btnPreferredHeight: 32

    property var themeTypeListener : function() {
        if(Theme.type === ThemeType.Light) {
            Theme.type = ThemeType.Dark
            color = "#202020"
        } else {
            Theme.type = ThemeType.Light
            color = "#f3f3f3"
        }
    }

    RowLayout {
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        spacing: 0

        IconButton {
            id: backBtn

            // disable: true
            iconSource: "0xe830"
            Layout.preferredWidth: btnPreferredWidth
            Layout.preferredHeight: btnPreferredHeight
            // onClicked: () => themeTypeListener(backBtn)
        }

        IconButton {
            id: menuBtn

            iconSource: "0xe700"
            Layout.preferredWidth: btnPreferredWidth
            Layout.preferredHeight: btnPreferredHeight
        }

        Image {
            Layout.leftMargin: 10
            Layout.preferredWidth: 19
            Layout.preferredHeight: 17
            source: "qrc:/resources/icon/favicon.ico"
        }

        Text {
            Layout.leftMargin: 10
            font {
                family: "微软雅黑"
                pixelSize: 12
            }
            text: qsTr("Fluent By QML")
            color: {
                return "#0e0e0e"
            }
        }
    }

    RowLayout {
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        spacing: 0

        IconButton {
            id: minBtn

            iconSource: "0xe921"
            Layout.preferredWidth: btnPreferredWidth
            Layout.preferredHeight: btnPreferredHeight
        }

        IconButton {
            id: maxBtn

            iconSource: "0xe922"
            Layout.preferredWidth: btnPreferredWidth
            Layout.preferredHeight: btnPreferredHeight
        }

        IconButton {
            id: closeBtn

            iconSource: "0xe8bb"
            hoverColer: "#e81123"
            Layout.preferredWidth: btnPreferredWidth
            Layout.preferredHeight: btnPreferredHeight
        }
    }
}
