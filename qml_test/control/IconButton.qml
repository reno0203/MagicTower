/**
 * 图标按钮
 */
import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic
import MagicTower

Button {
    property string iconSource: ""
    property string hoverColer: "#e5e5e5"
    property bool disable: false

    background: Rectangle {
        color: {
            if(parent.hovered) {
                if(parent.disable) {
                    return "transparent"
                }

                return hoverColer
            }

            return "transparent"
        }
    }

    contentItem: Text {
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: fontLoader.name
        text: String.fromCharCode(iconSource).toString(16)
        color: {
            if(Theme.type === ThemeType.Light) {
                if(parent.disable) {
                    return "#b0b0b0"
                }

                if(parent.hovered) {
                    return Qt.lighter("#0e0e0e")
                }

                return "#0e0e0e"
            } else if(Theme.type === ThemeType.Dark) {
                if(parent.disable) {
                    return "#b0b0b0"
                }

                if(parent.hovered) {
                    return Qt.lighter("#0e0e0e")
                }

                return "#b0b0b0"
            }

        }
    }

    FontLoader {
        id: fontLoader
        source: "qrc:/resources/fonts/SegoeFluentIcons.ttf"
    }
}
