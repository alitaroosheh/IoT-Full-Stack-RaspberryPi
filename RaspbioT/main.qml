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
    width: 1920
    height: 1080
    visible: true
    visibility: "FullScreen"
    title: qsTr("RaspioT")


    FontLoader {
        id: fontLoader
        source: "qrc:/Fonts/Font Awesome 6 Free-Solid-900.otf"
    }


    GridLayout {
        x: 0
        y: 0
        //width: window.width
        height: 100
        id: grid
        //anchors.right: parent
        columns: 3
        layoutDirection: Qt.RightToLeft

        Button {
            id: btnShutdown
            Layout.alignment: Qt.AlignRight
            width: 100
            height: 100
            text: "\uf011"
            font.family: fontLoader.name
            font.pointSize: 15
            Material.foreground: "yellowgreen"
            Material.background: "transparent"
            onClicked: {
                Qt.quit()
                //qmlInteractor.shutdown()
            }
        }
        Button {
            id: btnSettings
            Layout.alignment: Qt.AlignRight
            width: 100
            height: 100
            text: "\uf013"
            font.family: fontLoader.name
            font.pointSize: 15
            Material.foreground: "yellowgreen"
            Material.background: "transparent"
            onClicked: {
                //qmlInteractor.shutdown()
            }
        }
        Button {
            id: btnHome
            Layout.alignment: Qt.AlignRight
            width: 100
            height: 100
            text: "\uf015"
            font.family: fontLoader.name
            font.pointSize: 15
            Material.foreground: "yellowgreen"
            Material.background: "transparent"
            onClicked: {
                //qmlInteractor.shutdown()
            }
        }
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
