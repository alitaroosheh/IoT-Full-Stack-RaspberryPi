import QtQuick 2.15

import QtGraphicalEffects 1.0

Item {
    id: sticker

    property alias color: rect.color
    property alias stickerOpacity: rect.opacity

    Rectangle {
        id: rect
        anchors.centerIn: parent
        radius: 20
//        border.width: 100
//        border.color: "red"
        anchors.fill: parent
        color: "white"
        opacity: 0.5
    }

    DropShadow {
        id: drop
        anchors.fill: rect
        source: rect
        horizontalOffset: 5
        verticalOffset: 5
        opacity: 0.2
        radius: 15
        samples: 16
        color: "green"
        transparentBorder: true
    }

//    Glow {
//        anchors.fill: rect
//        radius: 8
//        color: "white"
//        source: rect
//        opacity: 0.01
//        spread: 0.1
//    }

//    RectangularGlow {
//        id: effect
//        anchors.fill: rect
//        glowRadius: 10
//        spread: 0.3
//        color: "white"
//        cornerRadius: rect.radius + glowRadius
//    }

//    ShaderEffectSource {
//        id: ses
//        anchors.fill: parent
//        sourceItem: stickerRoot.parent
//        sourceRect: Qt.rect(sticker.x, sticker.y, sticker.width, sticker.height)
//    }

//    GaussianBlur {
//        radius: 50
//        anchors.fill: ses
//        source: ses
//        samples: 1 + radius * 2
//    }
}
