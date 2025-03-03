import QtQuick 2.15
import org.kde.plasma.core 2.0 as PlasmaCore

PlasmaCore.Button {
    id: switchButton
    width: 100
    height: 40
    text: "Mode 1"

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (mouse.button === Qt.LeftButton) {
                plasmoid.nativeInterface.cycleForward();
            } else if (mouse.button === Qt.RightButton) {
                plasmoid.nativeInterface.cycleBackward();
            }
        }
    }

    Plasmoid.nativeInterface: PlasmaCore.DataSource {
        function cycleForward() {
            plasmoid.nativeInterface.call("cycleForward");
        }
        function cycleBackward() {
            plasmoid.nativeInterface.call("cycleBackward");
        }
    }
}

