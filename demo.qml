import QtQuick 2.15
import QtQuick.Controls 2.15 as QtControls

Rectangle {
    id: root
    anchors.fill: parent

    color: 'grey'

    Column {
        spacing: 5

        QtControls.ComboBox {

            model: [
                { text: 'Release' },
                { text: 'Debug' }
            ]

        }

        QtControls.Button {
            text: 'Open Popup'

            onClicked: popup.open()
        }
    }

    QtControls.Popup {
        id: popup

        width: 600
        height: 320
        focus: true
        closePolicy: QtControls.Popup.CloseOnEscape | QtControls.Popup.CloseOnPressOutsideParent

        anchors.centerIn: root

        contentItem: Item {
            id: settingsMenu
            anchors.fill: parent

            QtControls.ComboBox {

                model: [
                    { text: 'Release' },
                    { text: 'Debug' }
                ]

            }
        }

        background: Rectangle {
            color: 'white'
        }
    }
}
