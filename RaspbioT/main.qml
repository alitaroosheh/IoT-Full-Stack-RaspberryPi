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

import QtGraphicalEffects 1.0

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

    header: ToolBar {
        Material.background: "#25252b"
        RowLayout {
            id: headerRowLayout
            anchors.fill: parent
            spacing: 0

            ToolButton {
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

            ToolButton {
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
            Item {
                Layout.fillWidth: true
            }

            ToolButton {
                id: btnShutdown
                text: "\uf011" //power
                font.family: fontLoader.name
                font.pointSize: 15
                Material.foreground: "yellowgreen"
                Material.background: "transparent"
                onClicked: Qt.quit()
            }
        }
    }





    Image {
        id: img

        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        source: "qrc:/background.jpg"

        GridLayout {
            id : gridMain
            //anchors.fill: parent
            width: parent.width-100
            height: parent.height-100
            anchors.centerIn: parent
            rows    : 2
            columns : 2

//            Text { text: "Three"; font.bold: true; color: "red"}
//            Text { text: "words"; color: "red" }
//            Text { text: "in"; font.underline: true; color: "red"}
//            Text { text: "a"; font.pixelSize: 20; color: "red"}
//            Text { text: "row"; font.strikeout: true; color: "red" }

//            Sticker {
//                id: stickerNotification
//                Layout.columnSpan: 1
//                Layout.fillWidth: true
//                Layout.fillHeight: true
////                Layout.row : 0
////                Layout.column : 0
//                //anchors.centerIn: parent
//                //width: parent.width * 1/2
//                //height: parent.height * 1/2
//                Label {
//                    anchors.centerIn: parent
//                    text: "Notifications"
//                    font.pointSize: 32
//                }
//            }

            Sticker {
                id: stickerPlayer
                Layout.columnSpan: 1
                Layout.fillWidth: true
                Layout.fillHeight: true
//                Layout.row : 0
//                Layout.column : 1
                //anchors.centerIn: parent
                //width: parent.width * 1/2
                //height: parent.height * 1/2
                Label {
                    anchors.centerIn: parent
                    text: "Player"
                    font.pointSize: 32
                }
            }

            Sticker {
                id: stickerDevices
                Layout.rowSpan: 2
                Layout.fillWidth: true
                Layout.fillHeight: true
//                Layout.row : 1
//                Layout.column : 0
                //anchors.centerIn: parent
                //width: parent.width * 1/2
                //height: parent.height * 1/2
                Label {
                    anchors.centerIn: parent
                    text: "Devices"
                    font.pointSize: 32
                }
            }

            Sticker {
                id: stickerWeather
                Layout.columnSpan: 1
                Layout.fillWidth: true
                Layout.fillHeight: true
//                Layout.row : 1
//                Layout.column : 1
                //anchors.centerIn: parent
                //width: parent.width * 1/2
                //height: parent.height * 1/2
                Label {
                    anchors.centerIn: parent
                    text: "Weather"
                    font.pointSize: 32
                }
            }

        }




    }

//    GridLayout {
//        x: 0
//        y: 0
//        //width: window.width
//        height: 100
//        id: grid
//        //anchors.right: parent
//        columns: 3
//        layoutDirection: Qt.RightToLeft

//        Button {
//            id: btnShutdown
//            Layout.alignment: Qt.AlignRight
//            width: 100
//            height: 100
//            text: "\uf011"
//            font.family: fontLoader.name
//            font.pointSize: 15
//            Material.foreground: "yellowgreen"
//            Material.background: "transparent"
//            onClicked: {
//                Qt.quit()
//                //qmlInteractor.shutdown()
//            }
//        }
//        Button {
//            id: btnSettings
//            Layout.alignment: Qt.AlignRight
//            width: 100
//            height: 100
//            text: "\uf013"
//            font.family: fontLoader.name
//            font.pointSize: 15
//            Material.foreground: "yellowgreen"
//            Material.background: "transparent"
//            onClicked: {
//                //qmlInteractor.shutdown()
//            }
//        }
//        Button {
//            id: btnHome
//            Layout.alignment: Qt.AlignRight
//            width: 100
//            height: 100
//            text: "\uf015"
//            font.family: fontLoader.name
//            font.pointSize: 15
//            Material.foreground: "yellowgreen"
//            Material.background: "transparent"
//            onClicked: {
//                //qmlInteractor.shutdown()
//            }
//        }
//    }





//    InputPanel {
//        id: inputPanel
//        z: 99
//        x: 0
//        y: window.height
//        width: window.width

//        states: State {
//            name: "visible"
//            when: inputPanel.active
//            PropertyChanges {
//                target: inputPanel
//                y: window.height - inputPanel.height
//            }
//        }
//        transitions: Transition {
//            from: ""
//            to: "visible"
//            reversible: true
//            ParallelAnimation {
//                NumberAnimation {
//                    properties: "y"
//                    duration: 250
//                    easing.type: Easing.InOutQuad
//                }
//            }
//        }
//    }
}
