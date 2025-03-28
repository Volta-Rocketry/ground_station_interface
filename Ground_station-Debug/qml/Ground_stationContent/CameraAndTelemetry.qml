import QtQuick

CameraAndTelemetryForm {
    Connections {
        target: serialManager
        function onCoreDataReady() {

            // Texts sectionMainData
            txtAltMVal.text = serialManager.getLastDataInList(7, -1)
            txtAltFtVal.text = serialManager.getDataConvertedImperial(1)
            txtSpeedMVal.text = serialManager.getLastDataInList(12, -1)
            txtSpeedFtVal.text = serialManager.getDataConvertedImperial(2)

            let accelX = serialManager.getLastDataInList(1, -1)
            let accelY = serialManager.getLastDataInList(2, -1)
            let accelZ = serialManager.getLastDataInList(3, -1)
            console.log(accelX)
            console.log(accelY)
            console.log(accelZ)
            let accelGeneral = Math.sqrt(Math.pow(accelX,
                                                  2) + Math.pow(accelY,
                                                                2) + Math.pow(
                                             accelZ, 2)).toFixed(2)
            console.log(accelGeneral)
            txtAccelVal.text = accelGeneral.toString()
            txtLatVal.text = serialManager.getLastDataInList(8, -1)
            txtLonVal.text = serialManager.getLastDataInList(9, -1)

            let actualTime = serialManager.getCurrentTimeMSmString(0)
            txtTimerVal.text = "T: +" + actualTime

        }

        // Manual updates
        function onManualBoostDetected(){
        console.log("ENTRO BOOST MANUAL")
            txtTittleAscent.font.bold = true
            txtTittleAscent.color = "black"

            txtTittleApogee.font.bold = false
            txtTittleApogee.color = "#80000000"

            txtTittleMainChute.font.bold = false
            txtTittleMainChute.color = "#80000000"

            txtTittleTouchDown.font.bold = false
            txtTittleTouchDown.color = "#80000000"

            let widthTimeline = timeLineBackground.width
            timeLineValue.width = widthTimeline*0.07

            imgLower.visible = true
            imgLowerEyected.visible = false
            imgUpper.visible= true
            imgUpperEyected.visible = false
        }
        function onManualApogeeDetected(){
        console.log("ENTRO APOGEE MANUAL")
            txtTittleAscent.font.bold = true
            txtTittleAscent.color = "#80000000"

            txtTittleApogee.font.bold = true
            txtTittleApogee.color = "black"

            txtTittleMainChute.font.bold = false
            txtTittleMainChute.color = "#80000000"

            txtTittleTouchDown.font.bold = false
            txtTittleTouchDown.color = "#80000000"
            let widthTimeline = timeLineBackground.width

            timeLineValue.width = widthTimeline*0.3

            imgLower.visible = false
            imgLowerEyected.visible = true
            imgUpper.visible = true
            imgUpperEyected.visible = false
        }
        function onManualMainDetected(){
        console.log("ENTRO MAIN MANUAL")
            txtTittleAscent.font.bold = true
            txtTittleAscent.color = "#80000000"

            txtTittleApogee.font.bold = true
            txtTittleApogee.color = "#80000000"

            txtTittleMainChute.font.bold = true
            txtTittleMainChute.color = "black"

            txtTittleTouchDown.font.bold = false
            txtTittleTouchDown.color = "#80000000"
            let widthTimeline = timeLineBackground.width

            timeLineValue.width = widthTimeline*0.60

            imgLower.visible = false
            imgLowerEyected.visible = true
            imgUpper.visible = false
            imgUpperEyected.visible = true
        }
        function onManualLandingDetected(){
        console.log("ENTRO LANDING MANUAL")
            txtTittleAscent.font.bold = true
            txtTittleAscent.color = "#80000000"

            txtTittleApogee.font.bold = true
            txtTittleApogee.color = "#80000000"

            txtTittleMainChute.font.bold = true
            txtTittleMainChute.color = "#80000000"

            txtTittleTouchDown.font.bold = true
            txtTittleTouchDown.color = "black"

            let widthTimeline = timeLineBackground.width

            timeLineValue.width = widthTimeline

            imgLower.visible = false
            imgLowerEyected.visible = true
            imgUpper.visible = false
            imgUpperEyected.visible = true
        }
    }

    camera.cameraDevice: mediaDevices.videoInputs.length
                         > 1 ? mediaDevices.videoInputs[2] // Cambia el índice según la cámara deseada
                             : mediaDevices.defaultVideoInput

    Component.onCompleted: camera.start()

    // Mostrar y ocultar configuración
    btnSettings.onClicked: {
        loader.source = "ConfigurationScreen.qml"
        imgBtnCloseSettings.visible = true
    }
    btnCloseSettings.onClicked: {
        imgBtnCloseSettings.visible = false
        loader.source = ""
    }
    //focus: true  // Asegura que el componente pueda recibir eventos de teclado
    //Keys.onPressed: (event)=> { if (event.key == Qt.Key_Enter) console.log("Se presionó Enter"); }
}
