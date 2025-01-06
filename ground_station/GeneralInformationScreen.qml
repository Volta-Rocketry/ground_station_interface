import QtQuick 2.0

Item {
    width: parent.width
    height: parent.height

    Connections{
        target: serialConfig
        function onCoreDataReady(){
            txtValueAccelX.text = serialConfig.getLastAccelXValue()
            txtValueAccelY.text = serialConfig.getLastAccelYValue()
            txtValueAccelZ.text = serialConfig.getLastAccelZValue()
            txtValueAngleX.text = serialConfig.getAngleXLastValue()
            txtValueAngleY.text = serialConfig.getAngleYLastValue()
            txtValueAngleZ.text = serialConfig.getAngleZLastValue()
            txtValueSpeed.text = serialConfig.getVelLastValue()
            txtValueCurrentAlt.text = serialConfig.getLastCurrentAltValue()
            txtValueApogeeAlt.text = serialConfig.getApogeeAltLastValue()
            txtValuePressure.text = serialConfig.getPressureAltLastValue()
        }
        function onPyroContDataReady(){
            imgPyroA1.color = serialConfig.getPyroA1Color()
            imgPyroA2.color = serialConfig.getPyroA2Color()
            imgPyroA3.color = serialConfig.getPyroA3Color()
            imgPyroA4.color = serialConfig.getPyroA4Color()
            imgPyroA5.color = serialConfig.getPyroA5Color()
            imgPyroB1.color = serialConfig.getPyroB1Color()
            imgPyroB2.color = serialConfig.getPyroB2Color()
            imgPyroB3.color = serialConfig.getPyroB3Color()
            imgPyroB4.color = serialConfig.getPyroB4Color()
            imgPyroB5.color = serialConfig.getPyroB5Color()
            imgChamber1.color = serialConfig.getChamber1TempColor()
            imgChamber2.color = serialConfig.getChamber2TempColor()
            imgChamber3.color = serialConfig.getChamber3TempColor()
            imgChamber4.color = serialConfig.getChamber4TempColor()
            txtValueChamber1.text = serialConfig.getChamber1TempValue()
            txtValueChamber2.text = serialConfig.getChamber1TempValue()
            txtValueChamber3.text = serialConfig.getChamber1TempValue()
            txtValueChamber4.text = serialConfig.getChamber1TempValue()
        }
        function onGpsDataReady(){
            txtValueLat.text = serialConfig.getNewerLatLastValue()
            txtValueLon.text = serialConfig.getNewerLonLastValue()
        }
    }

    Rectangle {
        id: rectangle
        color: "transparent"
        anchors.fill: parent

        Text {
            id: txtTittleGeneralInformation
            text: qsTr("General Information")
            anchors.top: parent.top
            anchors.topMargin: parent.height*0.044
            font.pixelSize: parent.height*0.045
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
        }

        Text {
            id: txt_TittleCore
            text: qsTr("Core")
            anchors.top: txtTittleGeneralInformation.bottom
            anchors.topMargin: parent.height*0.235
            font.pixelSize: parent.height*0.03
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: parent.height*-0.522
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
        }

        Text {
            id: txtTittleAccelX
            text: qsTr("Acceleration X:")
            anchors.top: txt_TittleCore.bottom
            anchors.topMargin: parent.height*0.019
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenterOffset: parent.height*-0.188
            anchors.horizontalCenter: txt_TittleCore.horizontalCenter
            font.italic: true
            font.bold: false
        }

        Text {
            id: txtValueAccelX
            text: serialConfig.getLastAccelXValue()
            anchors.verticalCenter: txtTittleAccelX.verticalCenter
            anchors.left: txtTittleAccelX.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtUnitsAccelX
            text: qsTr("m/s^2")
            anchors.verticalCenter: txtValueAccelX.verticalCenter
            anchors.left: txtValueAccelX.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtTittleAccelY
            text: qsTr("Acceleration Y:")
            anchors.top: txtTittleAccelX.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            anchors.horizontalCenter: txtTittleAccelX.horizontalCenter
        }

        Text {
            id: txtValueAccelY
            text: serialConfig.getLastAccelYValue()
            anchors.verticalCenter: txtTittleAccelY.verticalCenter
            anchors.left: txtTittleAccelY.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtUnitsAccelY
            text: qsTr("m/s^2")
            anchors.verticalCenter: txtValueAccelY.verticalCenter
            anchors.left: txtValueAccelY.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtTittleAccelZ
            text: qsTr("Acceleration Z:")
            anchors.top: txtTittleAccelY.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            anchors.horizontalCenter: txtTittleAccelY.horizontalCenter
        }

        Text {
            id: txtValueAccelZ
            text: serialConfig.getLastAccelZValue()
            anchors.verticalCenter: txtTittleAccelZ.verticalCenter
            anchors.left: txtTittleAccelZ.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtUnitsAccelZ
            text: qsTr("m/s^2")
            anchors.verticalCenter: txtValueAccelZ.verticalCenter
            anchors.left: txtValueAccelZ.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtTittleAngleX
            text: qsTr("Angle X:")
            anchors.verticalCenter: txtTittleAccelX.verticalCenter
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenterOffset: parent.height*0.125
            anchors.horizontalCenter: txt_TittleCore.horizontalCenter
            font.italic: true
        }

        Text {
            id: txtValueAngleX
            text: serialConfig.getAngleXLastValue()
            anchors.verticalCenter: txtTittleAngleX.verticalCenter
            anchors.left: txtTittleAngleX.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtUnitsAngleX
            x: 329
            text: qsTr("°")
            anchors.verticalCenter: txtValueAngleX.verticalCenter
            anchors.left: txtValueAngleX.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtTittleAngleY
            text: qsTr("Angle Y:")
            anchors.top: txtTittleAngleX.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenter: txtTittleAngleX.horizontalCenter
            font.italic: true
        }

        Text {
            id: txtTittleAngleZ
            text: qsTr("Angle Z:")
            anchors.top: txtTittleAngleY.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenter: txtTittleAngleY.horizontalCenter
            font.italic: true
        }

        Text {
            id: txtValueAngleY
            text: serialConfig.getAngleYLastValue()
            anchors.verticalCenter: txtTittleAngleY.verticalCenter
            anchors.left: txtTittleAngleY.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtValueAngleZ
            text: serialConfig.getAngleZLastValue()
            anchors.verticalCenter: txtTittleAngleZ.verticalCenter
            anchors.left: txtTittleAngleZ.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtUnitsAngleY
            text: qsTr("°")
            anchors.verticalCenter: txtTittleAngleY.verticalCenter
            anchors.left: txtValueAngleY.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtUnitsAngleZ
            text: qsTr("°")
            anchors.verticalCenter: txtValueAngleZ.verticalCenter
            anchors.left: txtValueAngleZ.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtTittleSpeed
            text: qsTr("Speed:")
            anchors.top: txtTittleAccelZ.bottom
            anchors.topMargin: parent.height*0.019
            font.pixelSize: parent.height*0.023
            font.italic: true
            anchors.horizontalCenterOffset: parent.height*-0.063
            anchors.horizontalCenter: txt_TittleCore.horizontalCenter
        }

        Text {
            id: txtValueSpeed
            text: serialConfig.getVelLastValue()
            anchors.verticalCenter: txtTittleSpeed.verticalCenter
            anchors.left: txtTittleSpeed.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtUnitsSpeed
            x: 287
            y: 242
            text: qsTr("m/s")
            anchors.verticalCenter: txtTittleSpeed.verticalCenter
            anchors.left: txtValueSpeed.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtTittleCurrentAlt
            text: qsTr("Current Altitude:")
            anchors.top: txtTittleSpeed.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: txtTittleSpeed.horizontalCenter
            font.italic: true
        }


        Text {
            id: txtValueCurrentAlt
            text: serialConfig.getLastCurrentAltValue()
            anchors.verticalCenter: txtTittleCurrentAlt.verticalCenter
            anchors.left: txtTittleCurrentAlt.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }


        Text {
            id: txtUnitsCurrentAlt
            text: qsTr("m")
            anchors.verticalCenter: txtValueCurrentAlt.verticalCenter
            anchors.left: txtValueCurrentAlt.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtTittleApogeeAlt
            text: qsTr("Apogee Altitude:")
            anchors.top: txtTittleCurrentAlt.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenter: txtTittleCurrentAlt.horizontalCenter
            font.italic: true
        }

        Text {
            id: txtValueApogeeAlt
            text: serialConfig.getApogeeAltLastValue()
            anchors.verticalCenter: txtTittleApogeeAlt.verticalCenter
            anchors.left: txtTittleApogeeAlt.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtUnitsApogeeAlt
            text: qsTr("m")
            anchors.verticalCenter: txtValueApogeeAlt.verticalCenter
            anchors.left: txtValueApogeeAlt.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtTittlePressure
            text: qsTr("Current Pressure:")
            anchors.top: txtTittleApogeeAlt.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenter: txtTittleApogeeAlt.horizontalCenter
            font.italic: true
        }

        Text {
            id: txtValuePressure
            text: serialConfig.getPressureAltLastValue()
            anchors.verticalCenter: txtTittlePressure.verticalCenter
            anchors.left: txtTittlePressure.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }

        Text {
            id: txtUnitsPressure
            text: qsTr("hPa")
            anchors.verticalCenter: txtValuePressure.verticalCenter
            anchors.left: txtValuePressure.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
        }


        Text {
            id: txt_TittleEyection
            x: 345
            y: 354
            text: qsTr("Eyection")
            anchors.top: txtTittleGeneralInformation.bottom
            anchors.topMargin: parent.height*0.235
            font.pixelSize: parent.height*0.03
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: parent.height*0.065
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtTittlePyroA1
            x: 68
            text: qsTr("A1:")
            anchors.verticalCenter: imgPyroA1.verticalCenter
            anchors.right: imgPyroA1.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroA1
            width: parent.height*0.031
            height: imgPyroA1.width
            color: serialConfig.getPyroA1Color()
            anchors.top: txt_TittleEyection.bottom
            anchors.topMargin: parent.height*0.019
            anchors.horizontalCenterOffset: parent.height*-0.044
            anchors.horizontalCenter: txt_TittleEyection.horizontalCenter
        }

        Text {
            id: txtTittlePyroA2
            x: 68
            text: qsTr("A2:")
            anchors.verticalCenter: imgPyroA2.verticalCenter
            anchors.right: imgPyroA2.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroA2
            width: parent.height*0.031
            height: imgPyroA2.width
            color: serialConfig.getPyroA2Color()
            anchors.top: imgPyroA1.bottom
            anchors.topMargin: parent.height*0.006
            anchors.horizontalCenter: imgPyroA1.horizontalCenter
        }

        Text {
            id: txtTittlePyroA3
            x: 68
            text: qsTr("A3:")
            anchors.verticalCenter: imgPyroA3.verticalCenter
            anchors.right: imgPyroA3.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroA3
            width: parent.height*0.031
            height: imgPyroA3.width
            color: serialConfig.getPyroA3Color()
            anchors.top: imgPyroA2.bottom
            anchors.topMargin: parent.height*0.006
            anchors.horizontalCenter: imgPyroA2.horizontalCenter
        }

        Text {
            id: txtTittlePyroA4
            x: 68
            text: qsTr("A4:")
            anchors.verticalCenter: imgPyroA4.verticalCenter
            anchors.right: imgPyroA4.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroA4
            width: parent.height*0.031
            height: imgPyroA4.width
            color: serialConfig.getPyroA4Color()
            anchors.top: imgPyroA3.bottom
            anchors.topMargin: parent.height*0.006
            anchors.horizontalCenter: imgPyroA3.horizontalCenter
        }

        Text {
            id: txtTittlePyroA5
            x: 68
            text: qsTr("A5:")
            anchors.verticalCenter: imgPyroA5.verticalCenter
            anchors.right: imgPyroA5.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroA5
            width: parent.height*0.031
            height: imgPyroA5.width
            color: serialConfig.getPyroA5Color()
            anchors.top: imgPyroA4.bottom
            anchors.topMargin: parent.height*0.006
            anchors.horizontalCenter: imgPyroA4.horizontalCenter
        }

        Text {
            id: txtTittlePyroB1
            x: 152
            text: qsTr("B1:")
            anchors.verticalCenter: imgPyroB1.verticalCenter
            anchors.right: imgPyroB1.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroB1
            width: parent.height*0.031
            height: imgPyroB1.width
            color: serialConfig.getPyroB1Color()
            anchors.verticalCenter: imgPyroA1.verticalCenter
            anchors.left: imgPyroA1.right
            anchors.leftMargin: parent.height*0.075
        }

        Text {
            id: txtTittlePyroB2
            x: 152
            text: qsTr("B2:")
            anchors.verticalCenter: imgPyroB2.verticalCenter
            anchors.right: imgPyroB2.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroB2
            width: parent.height*0.031
            height: imgPyroB2.width
            color: serialConfig.getPyroB2Color()
            anchors.verticalCenter: imgPyroA2.verticalCenter
            anchors.horizontalCenter: imgPyroB1.horizontalCenter
        }

        Text {
            id: txtTittlePyroB3
            x: 152
            text: qsTr("B3:")
            anchors.verticalCenter: imgPyroB3.verticalCenter
            anchors.right: imgPyroB3.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroB3
            width: parent.height*0.031
            height: imgPyroB3.width
            color: serialConfig.getPyroB3Color()
            anchors.verticalCenter: imgPyroA3.verticalCenter
            anchors.horizontalCenter: imgPyroB2.horizontalCenter
        }

        Text {
            id: txtTittlePyroB4
            x: 152
            text: qsTr("B4:")
            anchors.verticalCenter: imgPyroB4.verticalCenter
            anchors.right: imgPyroB4.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroB4
            width: parent.height*0.031
            height: imgPyroB4.width
            color: serialConfig.getPyroB4Color()
            anchors.verticalCenter: imgPyroA4.verticalCenter
            anchors.horizontalCenter: imgPyroB3.horizontalCenter
        }

        Text {
            id: txtTittlePyroB5
            x: 152
            text: qsTr("B5:")
            anchors.verticalCenter: imgPyroB5.verticalCenter
            anchors.right: imgPyroB5.left
            anchors.rightMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            font.italic: true
            font.bold: false
        }

        Rectangle {
            id: imgPyroB5
            width: parent.height*0.031
            height: imgPyroB5.width
            color: serialConfig.getPyroB5Color()
            anchors.verticalCenter: imgPyroA5.verticalCenter
            anchors.horizontalCenter: imgPyroB4.horizontalCenter
        }

        Text {
            id: txtTittlChamber1
            text: qsTr("Chamber 1")
            anchors.top: imgChamber1.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.018
            anchors.horizontalCenter: imgChamber1.horizontalCenter
            font.italic: true
        }

        Rectangle {
            id: imgChamber1
            x: 53
            width: parent.height*0.063
            height: imgChamber1.width
            color: serialConfig.getChamber1TempColor()
            anchors.verticalCenter: imgPyroA1.verticalCenter
            anchors.right: txtTittlePyroA1.left
            anchors.rightMargin: parent.height*0.056

            Text {
                id: txtValueChamber1
                text: serialConfig.getChamber1TempValue()
                anchors.fill: parent
                font.pixelSize: parent.height*0.32
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Text {
            id: txtTittlChamber2
            text: qsTr("Chamber 2")
            anchors.top: imgChamber2.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.018
            anchors.horizontalCenter: imgChamber2.horizontalCenter
            font.italic: true
        }

        Rectangle {
            id: imgChamber2
            width: parent.height*0.063
            height: imgChamber2.width
            color: serialConfig.getChamber2TempColor()
            anchors.top: txtTittlChamber1.bottom
            anchors.topMargin: parent.height*0.013
            anchors.horizontalCenter: imgChamber1.horizontalCenter
            Text {
                id: txtValueChamber2
                text: serialConfig.getChamber1TempValue()
                anchors.fill: parent
                font.pixelSize: parent.height*0.32
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Text {
            id: txtTittlChamber3
            text: qsTr("Chamber 3")
            anchors.top: imgChamber3.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.018
            anchors.horizontalCenter: imgChamber3.horizontalCenter
            font.italic: true
        }

        Rectangle {
            id: imgChamber3
            y: 392
            width: parent.height*0.063
            height: imgChamber3.width
            color: serialConfig.getChamber3TempColor()
            anchors.verticalCenter: imgChamber1.verticalCenter
            anchors.left: imgPyroB1.right
            anchors.leftMargin: parent.height*0.056
            Text {
                id: txtValueChamber3
                text: serialConfig.getChamber3TempValue()
                anchors.fill: parent
                font.pixelSize: parent.height*0.32
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Text {
            id: txtTittlChamber4
            text: qsTr("Chamber 4")
            anchors.top: imgChamber4.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.018
            anchors.horizontalCenter: imgChamber4.horizontalCenter
            font.italic: true
        }

        Rectangle {
            id: imgChamber4
            width: parent.height*0.063
            height: imgChamber4.width
            color: serialConfig.getChamber4TempColor()
            anchors.top: txtTittlChamber3.bottom
            anchors.topMargin: parent.height*0.013
            anchors.horizontalCenter: imgChamber3.horizontalCenter
            Text {
                id: txtValueChamber4
                text: serialConfig.getChamber4TempValue()
                anchors.fill: parent
                font.pixelSize: parent.height*0.32
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Text {
            id: txt_TittleOtherData
            x: 345
            y: 587
            text: qsTr("Other Data")
            anchors.verticalCenter: txt_TittleEyection.verticalCenter
            font.pixelSize: parent.height*0.03
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: parent.height*0.548
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtTittleHumidity
            text: qsTr("Humidity:")
            anchors.top: txt_TittleOtherData.bottom
            anchors.topMargin: parent.height*0.019
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenterOffset: parent.height*-0.05
            anchors.horizontalCenter: txt_TittleOtherData.horizontalCenter
        }

        Text {
            id: txtValueHumidity
            text: qsTr("000.000")
            anchors.verticalCenter: txtTittleHumidity.verticalCenter
            anchors.left: txtTittleHumidity.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
        }

        Text {
            id: txtUnitsHumidity
            text: qsTr("%")
            anchors.verticalCenter: txtValueHumidity.verticalCenter
            anchors.left: txtValueHumidity.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
        }

        Text {
            id: txtTittlePressureRef
            text: qsTr("Reference Preassure:")
            anchors.top: txtTittleHumidity.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenter: txtTittleHumidity.horizontalCenter
        }

        Text {
            id: txtValuePressureRef
            text: qsTr("000.000")
            anchors.verticalCenter: txtTittlePressureRef.verticalCenter
            anchors.left: txtTittlePressureRef.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
        }

        Text {
            id: txtUnitsPressureRef
            text: qsTr("%%")
            anchors.verticalCenter: txtValuePressureRef.verticalCenter
            anchors.left: txtValuePressureRef.right
            anchors.leftMargin: parent.height*0.006
            font.pixelSize: parent.height*0.023
        }


        Text {
            id: txt_TittleGpsData
            x: 345
            y: 587
            text: qsTr("GPS Data")
            anchors.top: txtUnitsPressureRef.bottom
            anchors.topMargin: parent.height*0.019
            font.pixelSize: parent.height*0.03
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: txt_TittleOtherData.horizontalCenter
        }

        Text {
            id: txtValueLat
            text: serialConfig.getNewerLatLastValue()
            anchors.top: txt_TittleGpsData.bottom
            anchors.topMargin: parent.height*0.019
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenterOffset: parent.height*-0.044
            anchors.horizontalCenter: txt_TittleOtherData.horizontalCenter
        }

        Text {
            id: txtValueLon
            text: serialConfig.getNewerLonLastValue()
            anchors.verticalCenter: txtValueLat.verticalCenter
            font.pixelSize: parent.height*0.023
            anchors.horizontalCenter: txtTittleLon.horizontalCenter

        }

        Text {
            id: txtTittleLat
            text: qsTr("Latitude")
            anchors.top: txtValueLat.bottom
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.019
            anchors.horizontalCenter: txtValueLat.horizontalCenter
        }

        Text {
            id: txtTittleLon
            text: qsTr("Longitude")
            anchors.left: txtTittleLat.right
            anchors.top: txtValueLon.bottom
            anchors.leftMargin: parent.height*0.05
            anchors.topMargin: parent.height*0.006
            font.pixelSize: parent.height*0.019
        }

    }
}
