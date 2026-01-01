import QtQuick 2.15
import QtQuick.Controls 2.15
import org.kde.plasma.core 2.0 as PlasmaCore

Rectangle {
    id: root
    height: 32
    width: Screen.width
    color: "#1e1e1e"

    Row {
        anchors.verticalCenter: parent.verticalCenter
        spacing: 15
        anchors.left: parent.left
        anchors.leftMargin: 10

        Text {
            text: "ArchBar"
            color: "white"
            font.bold: true
            font.pointSize: 12
        }

        PlasmaCore.IconItem {
            source: "start-here-kde"
            width: 22
            height: 22
        }
    }
}
