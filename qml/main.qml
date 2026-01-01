import QtQuick 2.15
import QtQuick.Layouts 1.15
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents

RowLayout {
    id: root
    
    spacing: 10
    
    // Clock widget
    PlasmaComponents.Label {
        text: Qt.formatDateTime(new Date(), "hh:mm:ss")
        font.pixelSize: 14
        color: PlasmaCore.Theme.textColor
        
        Timer {
            interval: 1000
            running: true
            repeat: true
            onTriggered: parent.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
        }
    }
    
    // Date widget
    PlasmaComponents.Label {
        text: Qt.formatDateTime(new Date(), "dddd, MMMM d")
        font.pixelSize: 12
        color: PlasmaCore.Theme.textColor
    }
    
    // System tray placeholder
    PlasmaComponents.Label {
        text: "System Tray"
        font.pixelSize: 12
        color: PlasmaCore.Theme.textColor
    }
    
    // Add more widgets here as needed
}
