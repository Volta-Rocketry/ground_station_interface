

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtLocation
import QtPositioning
import Ground_station
import QtMultimedia

Rectangle {
    id: display
    width: 1920 //Constants.width
    height: 1080 //Constants.height
    color: "#ffffff"

    property alias rectangle8Height: divider2.height

    property real aspectRatio: 1.7778 //1920 / 1080 //display.width / display.height//
    property string timerVal: "T: +00:00:00"
    property alias timeLineValue: timeLineValue
    property alias timeLineBackground: timeLineBackground
    property alias txtTittleAscent: txtTittleAscent
    property alias txtTittleApogee: txtTittleApogee
    property alias txtTittleMainChute: txtTittleMainChute
    property alias txtTittleTouchDown: txtTittleTouchDown
    property alias txtLowerEyectionInfo: txtLowerEyectionInfo
    property alias txtUpperEyectionInfo: txtUpperEyectionInfo
    property alias imgUpper: imgUpper
    property alias imgLower: imgLower
    property alias imgUpperEyected: imgUpperEyected
    property alias imgLowerEyected: imgLowerEyected
    property alias txtTimerVal: txtTimerVal
    property alias rectStatus2: rectStatus2
    property alias txtAltMVal: txtAltMVal
    property alias txtAltFtVal: txtAltFtVal
    property alias txtSpeedMVal: txtSpeedMVal
    property alias txtSpeedFtVal: txtSpeedFtVal
    property alias txtAccelVal: txtAccelVal
    property alias txtLatVal: txtLatVal
    property alias txtLonVal: txtLonVal
    property alias mediaDevices: mediaDevices
    property alias camera: camera
    property alias loader: loader
    property alias btnSettings: btnSettings
    property alias btnCloseSettings: btnCloseSettings
    property alias imgBtnCloseSettings: imgBtnCloseSettings
    property alias txtLog: txtLog
    property alias sectionTimeLine: sectionTimeLine
    property alias sectionMainData: sectionMainData
    property alias sectionTimer: sectionTimer
    property alias sectionStatusInfo: sectionStatusInfo
    property alias rectangle6: rectangle6



    // Camera -- Start

    // Camera Configuration
    MediaDevices {
        id: mediaDevices
    }

    CaptureSession {
        id: captureSession
        camera: camera
        videoOutput: videoOutput
    }

    Camera {
        id: camera
        //cameraDevice: mediaDevices.defaultVideoInput
        //"HD User Facing"//
        //mediaDevices.videoInputs.length > 1
        //? mediaDevices.videoInputs[1]  // Cambia el índice según la cámara deseada
        //: mediaDevices.defaultVideoInput
        // onActiveChanged: console.log("Cámara activa:", active)
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
        fillMode: VideoOutput.Stretch
        focus: visible
    }

    // Camera -- Finish
    Image {
        id: sim_img2
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        source: "images/sim_img2.jpg"
        fillMode: Image.Stretch
        visible: false
    }

    Image {
        id: imgtestreport
        x: 420
        y: -420
        width: 1080
        height: 1920
        opacity: 0.893
        source: "images/imgtestreport2.jpg"
        scale: 1
        transformOrigin: Item.Center
        rotation: -90
        fillMode: Image.Stretch
        visible: false
    }

    Image {
        id: sim_img1
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        source: "images/sim_img1.jpg"
        fillMode: Image.Stretch
        visible: false
    }

    Rectangle {
        id: sectionMainData
        height: display.height * 0.417
        color: "#7affffff"
        radius: 15
        anchors.left: sectionTimer.left
        anchors.right: sectionTimer.right
        anchors.top: sectionTimer.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: display.height * 0.04167

        Text {
            id: txtAlt
            color: "#000000"
            text: qsTr("Altitude:")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: display.width * 0.005
            anchors.topMargin: display.height * 0.023
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            font.bold: true
        }

        Text {
            id: txtAltMVal
            y: 8
            color: "#000000"
            text: qsTr("0000")
            anchors.bottom: txtAltFtVal.top
            anchors.bottomMargin: display.width * -0.005
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            anchors.horizontalCenter: txtAltFtVal.horizontalCenter
        }

        Text {
            id: txtAltFtVal
            color: "#000000"
            text: qsTr("0000")
            anchors.verticalCenter: txtAlt.verticalCenter
            anchors.left: txtAlt.right
            anchors.leftMargin: display.width * 0.008
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            anchors.verticalCenterOffset: display.height * 0.016
        }

        Text {
            id: txtFt
            color: "#000000"
            text: qsTr("ft")
            anchors.verticalCenter: txtAltFtVal.verticalCenter
            anchors.left: txtAltFtVal.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
        }

        Text {
            id: txtM
            color: "#000000"
            text: qsTr("m")
            anchors.verticalCenter: txtAltMVal.verticalCenter
            anchors.left: txtAltMVal.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
        }

        Rectangle {
            id: divider1
            height: display.height * 0.014
            color: "#99000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: (sectionMainData.height - (3 * divider1.height)) / 4
        }

        Text {
            id: txtSpeed
            x: 28
            color: "#000000"
            text: qsTr("Speed:")
            anchors.top: divider1.bottom
            anchors.topMargin: display.height * 0.023
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            font.bold: true
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: txtAlt.horizontalCenter
        }

        Text {
            id: txtSpeedMVal
            y: 135
            color: "#000000"
            text: qsTr("00")
            anchors.bottom: txtSpeedFtVal.top
            anchors.bottomMargin: display.height * -0.009
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            anchors.horizontalCenter: txtSpeedFtVal.horizontalCenter
        }

        Text {
            id: txtSpeedFtVal
            color: "#000000"
            text: qsTr("00")
            anchors.verticalCenter: txtSpeed.verticalCenter
            anchors.left: txtAltFtVal.left
            anchors.leftMargin: 0
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            anchors.verticalCenterOffset: display.height * 0.016
        }

        Text {
            id: txtFtS
            color: "#000000"
            text: qsTr("ft/s")
            anchors.verticalCenter: txtSpeedFtVal.verticalCenter
            anchors.left: txtSpeedFtVal.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
        }

        Text {
            id: txtMS
            color: "#000000"
            text: qsTr("m/s")
            anchors.verticalCenter: txtSpeedMVal.verticalCenter
            anchors.left: txtSpeedMVal.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
        }

        Rectangle {
            id: divider2
            height: divider1.height
            color: "#99000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: divider1.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: (sectionMainData.height - (3 * divider1.height)) / 4
        }

        Text {
            id: txtAccel
            color: "#000000"
            text: qsTr("Accel:")
            anchors.top: divider2.bottom
            anchors.topMargin: display.height * 0.023
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            font.bold: true
            anchors.horizontalCenter: txtAlt.horizontalCenter
        }

        Text {
            id: txtAccelVal
            color: "#000000"
            text: qsTr("0.0")
            anchors.verticalCenter: txtAccel.verticalCenter
            anchors.left: txtAltFtVal.left
            anchors.leftMargin: 0
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
        }

        Text {
            id: txtG
            color: "#000000"
            text: qsTr("G´s")
            anchors.verticalCenter: txtAccelVal.verticalCenter
            anchors.left: txtAccelVal.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
        }

        Rectangle {
            id: divider3
            height: divider1.height
            color: "#99000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: divider2.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: (sectionMainData.height - (3 * divider1.height)) / 4
        }

        Text {
            id: txtLatVal
            color: "#000000"
            text: qsTr("000.0000")
            anchors.verticalCenter: txtLat.verticalCenter
            anchors.top: divider3.bottom
            anchors.topMargin: display.height * -0.005
            font.pixelSize: display.width * 0.021
            font.italic: false
            font.bold: false
            font.family: "Nasalization"
            anchors.horizontalCenterOffset: display.width * 0.016
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtLonVal
            color: "#000000"
            text: qsTr("0000.000")
            anchors.verticalCenter: txtLon.verticalCenter
            anchors.top: txtLatVal.bottom
            anchors.topMargin: display.height * -0.009
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            anchors.horizontalCenterOffset: display.width * 0.016
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtLat
            color: "#000000"
            text: qsTr("Lat")
            anchors.top: divider3.bottom
            anchors.topMargin: display.height * -0.005
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            anchors.horizontalCenterOffset: display.width * -0.06
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
        }

        Text {
            id: txtLon
            color: "#000000"
            text: qsTr("Lon")
            anchors.top: txtLat.bottom
            anchors.topMargin: display.height * -0.009
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            anchors.horizontalCenter: txtLat.horizontalCenter
            font.bold: true
        }
    }

    Rectangle {
        id: sectionTimer
        color: "#7dffffff"
        radius: 15
        border.width: 0
        anchors.left: sectionTimeLine.right
        anchors.right: parent.right
        anchors.top: sectionTimeLine.top
        anchors.bottom: sectionTimeLine.bottom
        anchors.leftMargin: display.width * 0.076
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        Text {
            id: txtTimerVal
            text: qsTr("T: +00:00:00")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: display.width * 0.016
            anchors.rightMargin: display.width * 0.016
            anchors.topMargin: display.height * 0.009
            anchors.bottomMargin: display.height * 0.009
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Nasalization"
            font.pointSize: display.width * 0.017
            font.bold: true
        }
    }

    Rectangle {
        id: sectionStatusInfo
        y: 936
        width: display.width * 0.160
        height: display.width * 0.036
        color: "#afffffff"
        radius: 15
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 0

        Rectangle {
            id: rectStatus2
            width: display.width * 0.021
            height: rectStatus2.width
            color: "#ff0000"
            radius: rectStatus2.width / 2
            border.width: 0
            anchors.verticalCenter: txtTittleTelemetry.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: display.width * 0.005
            anchors.topMargin: display.height * 0.019
        }

        Text {
            id: txtTittleTelemetry
            color: "#000000"
            text: qsTr("TELEMETRY")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: rectStatus2.right
            anchors.leftMargin: display.width * 0.005
            font.pixelSize: display.width * 0.018
            font.family: "Nasalization"
        }
    }

    Rectangle {
        id: sectionTimeLine
        width: display.width * 0.729
        height: display.height * 0.106
        color: "#7affffff"
        radius: aspectRatio * 8.4375
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 0
        anchors.topMargin: display.height * 0.009

        Rectangle {
            id: timeLineBackground
            height: display.height * 0.019
            color: Constants.secondaryColor
            radius: timeLineBackground.height / 2
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: display.width * 0.016
            anchors.rightMargin: display.width * 0.016
            anchors.topMargin: display.height * 0.019
        }

        Rectangle {
            id: timeLineValue
            width: 1
            height: timeLineBackground.height
            color: Constants.mainColor
            radius: timeLineValue.height / 2
            anchors.verticalCenter: timeLineBackground.verticalCenter
            anchors.left: timeLineBackground.left
            anchors.leftMargin: 0
        }

        Text {
            id: txtTittleAscent
            color: "#80000000"
            text: qsTr("Ascent")
            anchors.left: timeLineBackground.left
            anchors.top: timeLineBackground.bottom
            anchors.leftMargin: 0
            anchors.topMargin: display.width * 0.005
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            font.bold: false
        }

        Text {
            id: txtTittleApogee
            color: "#80000000"
            text: qsTr("Apogee")
            anchors.verticalCenter: txtTittleAscent.verticalCenter
            anchors.left: txtTittleAscent.right
            anchors.leftMargin: (timeLineBackground.width
                                 - (txtTittleAscent.width + txtTittleApogee.width
                                    + txtTittleMainChute.width + txtTittleTouchDown.width)) / 3
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            font.bold: false
        }

        Text {
            id: txtTittleMainChute
            color: "#82000000"
            text: qsTr("Main Chute")
            anchors.verticalCenter: txtTittleAscent.verticalCenter
            anchors.left: txtTittleApogee.right
            anchors.leftMargin: (timeLineBackground.width
                                 - (txtTittleAscent.width + txtTittleApogee.width
                                    + txtTittleMainChute.width + txtTittleTouchDown.width)) / 3
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
        }

        Text {
            id: txtTittleTouchDown
            color: "#7b000000"
            text: qsTr("Touch Down")
            anchors.verticalCenter: txtTittleAscent.verticalCenter
            anchors.left: txtTittleMainChute.right
            anchors.leftMargin: (timeLineBackground.width
                                 - (txtTittleAscent.width + txtTittleApogee.width
                                    + txtTittleMainChute.width + txtTittleTouchDown.width)) / 3
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
        }
    }

    Image {
        id: imgVoltaLogo
        x: 1620
        y: 772
        height: display.height * 0.241
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: display.height * 0.046
        source: "images/WhiteLogo_Safecrop.PNG"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: imgColombiaFlag
        y: 1013
        width: display.width * 0.104
        height: display.height * 0.046
        anchors.bottom: imgVoltaLogo.bottom
        anchors.bottomMargin: display.height * -0.032
        source: "images/Flag_of_Colombia.png"
        anchors.horizontalCenter: imgVoltaLogo.horizontalCenter
        fillMode: Image.Stretch
    }

    Rectangle {
        id: rectangle6
        x: 0
        width: display.width * 0.156
        height: display.height * 0.454
        color: "#7affffff"
        radius: 15
        anchors.top: sectionTimeLine.bottom
        anchors.topMargin: display.height * 0.02778

        Image {
            id: imgLowerEyected
            width: display.width * 0.08
            height: display.height * 0.161
            visible: false
            anchors.verticalCenter: imgLower.verticalCenter
            anchors.top: imgUpper.bottom
            anchors.topMargin: 0
            source: "images/Lower_E.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: imgUpperEyected
            width: display.width * 0.08
            height: display.height * 0.161
            visible: false
            anchors.verticalCenter: imgUpper.verticalCenter
            source: "images/Upper_E.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: imgUpper
            height: display.height * 0.161
            anchors.top: parent.top
            anchors.topMargin: display.height * 0.065
            source: "images/Upper_NE.png"
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
            visible: true
        }

        Image {
            id: imgLower
            height: display.height * 0.161
            anchors.top: imgUpper.bottom
            anchors.topMargin: 0
            source: "images/Lower_NE.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
            visible: true
        }

        Text {
            id: txtUpperEyectionInfo
            y: 8
            color: "#80000000"
            text: qsTr("Not eyected")
            anchors.bottom: imgUpper.top
            anchors.bottomMargin: display.height * 0.014
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: false
        }

        Text {
            id: txtLowerEyectionInfo
            color: "#7d000000"
            text: qsTr("Not eyected")
            anchors.top: imgLower.bottom
            anchors.topMargin: display.height * 0.014
            font.pixelSize: display.width * 0.021
            font.family: "Nasalization"
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: false
        }
    }

    Loader {
        id: loader
        width: display.width * 0.469
        height: display.height * 0.556
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    MouseArea {
        id: btnSettings
        x: 1534
        width: display.width * 0.208
        height: display.height * 0.139
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.topMargin: 0
    }

    Image {
        id: imgBtnCloseSettings
        x: 1010
        width: display.height * 0.069
        height: display.height * 0.069
        anchors.right: loader.right
        anchors.top: loader.top
        anchors.rightMargin: 0
        anchors.topMargin: 0
        source: "images/close_img.png"
        fillMode: Image.PreserveAspectFit
        visible: false

        MouseArea {
            id: btnCloseSettings
            x: 0
            y: 0
            visible: true
            anchors.fill: parent
        }
    }

    Text {
        id: txtLog
        y: 1064
        text: qsTr("LOG: XX,XX,XX,XX,XX,XX, Tsecs: 0000")
        anchors.left: sectionStatusInfo.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: display.height * 0.009
        anchors.bottomMargin: display.width * 0.005
        font.pixelSize: 12
        color: "white"
    }
}

/*##^##
Designer {
    D{i:0}D{i:5;invisible:true}
}
##^##*/
