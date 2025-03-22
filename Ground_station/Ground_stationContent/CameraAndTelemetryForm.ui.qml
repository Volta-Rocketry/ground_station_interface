

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

Rectangle {
    id: display
    width: 1920 //Constants.width
    height: 1080 //Constants.height
    color: "#ffffff"

    property alias txtLatLonDivAnchorsleftMargin: txtLatLonDiv.anchors.leftMargin
    property alias rectangle8Height: divider2.height

    property real aspectRatio: 1.7778 //1920 / 1080 //display.width / display.height//
    property string timerVal: "T: +00:00"
    property alias timeLineValue: timeLineValue
    property real timeLineMaxValue: timeLineBackground.width
    property alias txtTittleAscent: txtTittleAscent
    property alias txtTittleApogee: txtTittleApogee
    property alias txtTittleMainChutte: txtTittleMainChutte
    property alias txtTittleTouchDown: txtTittleTouchDown
    property alias txtLowerEyectionInfo: txtLowerEyectionInfo
    property alias txtUpperEyectionInfo: txtUpperEyectionInfo
    property alias imgUpper: imgUpper
    property alias imgLower: imgLower
    property alias imgUpperEyected: imgUpperEyected
    property alias imgLowerEyected: imgLowerEyected
    property alias txtTimerVal: txtTimerVal
    property alias rectStatus1: rectStatus1
    property alias rectStatus2: rectStatus2
    property alias txtAltMVal: txtAltMVal
    property alias txtAltFtVal: txtAltFtVal
    property alias txtSpeedMVal: txtSpeedMVal
    property alias txtSpeedFtVal: txtSpeedFtVal
    property alias txtAccelVal: txtAccelVal
    property alias txtLatVal: txtLatVal
    property alias txtLonVal: txtLonVal

    Image {
        id: sim_img2
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        source: "images/sim_img2.jpg"
        fillMode: Image.Stretch
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
    }

    Rectangle {
        id: sectionMainData
        y: 153
        height: display.height * 0.417
        color: "#7affffff"
        radius: 15
        anchors.left: sectionTimer.left
        anchors.right: sectionTimer.right
        anchors.leftMargin: 0
        anchors.rightMargin: 0

        Text {
            id: txtAlt
            color: "#000000"
            text: qsTr("Altitude:")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: display.width * 0.013
            anchors.topMargin: display.height * 0.023
            font.pixelSize: display.width * 0.021
        }

        Text {
            id: txtAltMVal
            y: 8
            color: "#000000"
            text: qsTr("0000")
            anchors.bottom: txtAltFtVal.top
            anchors.bottomMargin: display.width * -0.005
            font.pixelSize: display.width * 0.021
            anchors.horizontalCenter: txtAltFtVal.horizontalCenter
        }

        Text {
            id: txtAltFtVal
            color: "#000000"
            text: qsTr("00000")
            anchors.verticalCenter: txtAlt.verticalCenter
            anchors.left: txtAlt.right
            anchors.leftMargin: display.width * 0.008
            font.pixelSize: display.width * 0.021
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
        }

        Text {
            id: txtM
            color: "#000000"
            text: qsTr("m")
            anchors.verticalCenter: txtAltMVal.verticalCenter
            anchors.left: txtAltMVal.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
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
        }

        Text {
            id: txtMS
            color: "#000000"
            text: qsTr("m/s")
            anchors.verticalCenter: txtSpeedMVal.verticalCenter
            anchors.left: txtSpeedMVal.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
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
        }

        Text {
            id: txtG
            color: "#000000"
            text: qsTr("G´s")
            anchors.verticalCenter: txtAccelVal.verticalCenter
            anchors.left: txtAccelVal.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
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
            anchors.left: parent.left
            anchors.top: divider3.bottom
            anchors.leftMargin: display.width * 0.01
            anchors.topMargin: display.height * 0.006
            font.pixelSize: display.width * 0.021
        }

        Text {
            id: txtLonVal
            color: "#000000"
            text: qsTr("0000.000")
            anchors.verticalCenter: txtLatVal.verticalCenter
            anchors.left: txtLatLonDiv.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
        }

        Text {
            id: txtLat
            color: "#000000"
            text: qsTr("Lat")
            anchors.top: txtLatVal.bottom
            anchors.topMargin: display.height * -0.014
            font.pixelSize: display.width * 0.021
            anchors.horizontalCenter: txtLatVal.horizontalCenter
            font.bold: true
        }

        Text {
            id: txtLon
            color: "#000000"
            text: qsTr("Lon")
            anchors.verticalCenter: txtLat.verticalCenter
            font.pixelSize: display.width * 0.021
            anchors.horizontalCenter: txtLonVal.horizontalCenter
            font.bold: true
        }

        Text {
            id: txtLatLonDiv
            color: "#000000"
            text: qsTr("-")
            anchors.verticalCenter: txtLatVal.verticalCenter
            anchors.left: txtLatVal.right
            anchors.leftMargin: display.width * 0.003
            font.pixelSize: display.width * 0.021
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
        anchors.rightMargin: display.width * -0.005
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        Text {
            id: txtTimerVal
            text: qsTr("T: +00:00")
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
            font.pointSize: display.width * 0.023
            font.bold: true
        }
    }

    Rectangle {
        id: sectionStatusInfo
        y: 936
        width: display.width * 0.133
        height: display.height * 0.134
        color: "#afffffff"
        radius: 15
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 0

        Rectangle {
            id: rectStatus1
            width: display.width * 0.021
            height: display.height * 0.037
            color: "#ff0000"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: display.width * 0.01
            anchors.topMargin: display.height * 0.019
        }

        Rectangle {
            id: rectStatus2
            width: display.width * 0.021
            height: display.height * 0.037
            color: "#ff0000"
            anchors.top: rectStatus1.bottom
            anchors.topMargin: display.height * 0.019
            anchors.horizontalCenter: rectStatus1.horizontalCenter
        }

        Text {
            id: txtTittleCamera
            color: "#000000"
            text: qsTr("CAMERA")
            anchors.verticalCenter: rectStatus1.verticalCenter
            font.pixelSize: display.width * 0.018
            anchors.horizontalCenter: txtTittleTelemetry.horizontalCenter
        }

        Text {
            id: txtTittleTelemetry
            color: "#000000"
            text: qsTr("TELEMETRY")
            anchors.verticalCenter: rectStatus2.verticalCenter
            anchors.left: rectStatus2.right
            anchors.leftMargin: display.width * 0.005
            font.pixelSize: display.width * 0.018
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
                                    + txtTittleMainChutte.width + txtTittleTouchDown.width)) / 3
            font.pixelSize: display.width * 0.021
            font.bold: false
        }

        Text {
            id: txtTittleMainChutte
            color: "#82000000"
            text: qsTr("Main Chutte")
            anchors.verticalCenter: txtTittleAscent.verticalCenter
            anchors.left: txtTittleApogee.right
            anchors.leftMargin: (timeLineBackground.width
                                 - (txtTittleAscent.width + txtTittleApogee.width
                                    + txtTittleMainChutte.width + txtTittleTouchDown.width)) / 3
            font.pixelSize: display.width * 0.021
        }

        Text {
            id: txtTittleTouchDown
            color: "#7b000000"
            text: qsTr("Touch Down")
            anchors.verticalCenter: txtTittleAscent.verticalCenter
            anchors.left: txtTittleMainChutte.right
            anchors.leftMargin: (timeLineBackground.width
                                 - (txtTittleAscent.width + txtTittleApogee.width
                                    + txtTittleMainChutte.width + txtTittleTouchDown.width)) / 3
            font.pixelSize: display.width * 0.021
        }
    }

    Image {
        id: imgVoltaLogo
        x: 1620
        y: 772
        width: display.width * 0.156
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
        y: 153
        width: display.width * 0.156
        height: display.height * 0.454
        color: "#7affffff"
        radius: 15

        Image {
            id: imgUpper
            width: display.width * 0.08
            height: display.height * 0.161
            anchors.top: parent.top
            anchors.topMargin: display.height * 0.065
            source: "images/Upper.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: imgLower
            width: display.width * 0.08
            height: display.height * 0.161
            anchors.top: imgUpper.bottom
            anchors.topMargin: 0
            source: "images/Test2.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: imgLowerEyected
            width: display.width * 0.08
            height: display.height * 0.161
            visible: false
            anchors.verticalCenter: imgLower.verticalCenter
            anchors.top: imgUpper.bottom
            anchors.topMargin: 0
            source: "images/Lower_eyection.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: imgUpperEyected
            width: display.width * 0.08
            height: display.height * 0.161
            visible: false
            anchors.verticalCenter: imgUpper.verticalCenter
            source: "images/Upper_eyected.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: txtUpperEyectionInfo
            y: 8
            color: "#80000000"
            text: qsTr("Not eyected")
            anchors.bottom: imgUpper.top
            anchors.bottomMargin: display.height * 0.014
            font.pixelSize: display.width * 0.021
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
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: false
        }
    }
}
