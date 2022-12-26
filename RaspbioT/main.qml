//import QtQuick 2.15
//import QtQuick.Window 2.15
//import QtQuick.VirtualKeyboard 2.15

import QtQuick 2.4
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.4
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Layouts 1.11
import QtQuick.Window 2.11
import Qt.labs.calendar 1.0

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    TextField
    {
        id: textField
        x: 1
        y: 1
        width: window.width/2
        height: 40
        focus: true
        color: "floralwhite"
    }

    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: window.height
        width: window.width

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}
