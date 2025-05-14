import QtQuick

CameraAndTelemetryForm {
    Connections {
        target: serialManager
        function onLogUpdate(){
        txtLog.text = serialManager.getLogMessage()
        }
        function onCoreDataReady() {

            console.warn("Camera available:", camera.available)
            console.warn("Camera available lenght:", mediaDevices.videoInputs.length)
            console.warn("Camera availables:", mediaDevices.videoInputs)

            // Texts sectionMainData
            let currentAlt = serialManager.getLastDataInList(7, -1).toFixed(0)
            txtAltMVal.text = currentAlt
            txtAltFtVal.text = serialManager.getDataConvertedImperial(1).toFixed(0)
            txtSpeedMVal.text = serialManager.getLastDataInList(12, -1).toFixed(0)
            txtSpeedFtVal.text = serialManager.getDataConvertedImperial(2).toFixed(0)

            let accelX = serialManager.getLastDataInList(1, -1)
            let accelY = serialManager.getLastDataInList(2, -1)
            let accelZ = serialManager.getLastDataInList(3, -1)

            let accelGeneral = Math.sqrt(Math.pow(accelX,2) + Math.pow(accelY,2) + Math.pow(accelZ, 2)).toFixed(0)
            txtAccelVal.text = (accelGeneral/9.81).toFixed(0).toString()
            txtLatVal.text = "6.104991" //serialManager.getLastDataInList(8, -1)
            txtLonVal.text = "-75.387526" //serialManager.getLastDataInList(9, -1)

            let actualTime = serialManager.getActualTime() //serialManager.getCurrentTimeMSmString(0)
            txtTimerVal.text = "T: +" + actualTime


            // Actualizar barra de progreso
            let widthTimeline = timeLineBackground.width
            let ascent_start_bar = widthTimeline*0.07
            let apogee_start_bar = widthTimeline*0.3
            let main_start_bar = widthTimeline*0.60

            let rocketStatus = serialManager.getTelemetryStatus()

            let estApogeeAlt = serialManager.getEstApogeeAlt()
            let estMainAlt = serialManager.getEstMainAlt()

            if (rocketStatus ==1){
                // Idle
                txtTittleAscent.font.bold = false
                txtTittleAscent.color = "black"

                txtTittleApogee.font.bold = false
                txtTittleApogee.color = "#80000000"

                txtTittleMainChute.font.bold = false
                txtTittleMainChute.color = "#80000000"

                txtTittleTouchDown.font.bold = false
                txtTittleTouchDown.color = "#80000000"

                timeLineValue.width = 0

                imgLower.visible = true
                imgLowerEyected.visible = false
                imgUpper.visible= true
                imgUpperEyected.visible = false


            }else if (rocketStatus == 2 || rocketStatus == 3){
                // ascent or boost
                txtTittleAscent.font.bold = true
                txtTittleAscent.color = "black"

                txtTittleApogee.font.bold = false
                txtTittleApogee.color = "#80000000"

                txtTittleMainChute.font.bold = false
                txtTittleMainChute.color = "#80000000"

                txtTittleTouchDown.font.bold = false
                txtTittleTouchDown.color = "#80000000"

                timeLineValue.width = ascent_start_bar + (currentAlt/estApogeeAlt)* (apogee_start_bar-ascent_start_bar)

                imgLower.visible = true
                imgLowerEyected.visible = false
                imgUpper.visible= true
                imgUpperEyected.visible = false

            }else if (rocketStatus ==4){
                // apogee
                txtTittleAscent.font.bold = true
                txtTittleAscent.color = "#80000000"

                txtTittleApogee.font.bold = true
                txtTittleApogee.color = "black"

                txtTittleMainChute.font.bold = false
                txtTittleMainChute.color = "#80000000"

                txtTittleTouchDown.font.bold = false
                txtTittleTouchDown.color = "#80000000"

                timeLineValue.width = apogee_start_bar + ((estApogeeAlt-currentAlt)/(estApogeeAlt-estMainAlt))* (main_start_bar-apogee_start_bar)

                imgLower.visible = false
                imgLowerEyected.visible = true
                imgUpper.visible = true
                imgUpperEyected.visible = false

            }else if (rocketStatus ==5){
                // main
                txtTittleAscent.font.bold = true
                txtTittleAscent.color = "#80000000"

                txtTittleApogee.font.bold = true
                txtTittleApogee.color = "#80000000"

                txtTittleMainChute.font.bold = true
                txtTittleMainChute.color = "black"

                txtTittleTouchDown.font.bold = false
                txtTittleTouchDown.color = "#80000000"

                timeLineValue.width = main_start_bar + ((estMainAlt-currentAlt)/(estMainAlt))*(0.4*widthTimeline)

                imgLower.visible = false
                imgLowerEyected.visible = true
                imgUpper.visible = false
                imgUpperEyected.visible = true

            }else if (rocketStatus ==6){
                // touch down
                txtTittleAscent.font.bold = true
                txtTittleAscent.color = "#80000000"

                txtTittleApogee.font.bold = true
                txtTittleApogee.color = "#80000000"

                txtTittleMainChute.font.bold = true
                txtTittleMainChute.color = "#80000000"

                txtTittleTouchDown.font.bold = true
                txtTittleTouchDown.color = "black"

                timeLineValue.width = widthTimeline*1

                imgLower.visible = false
                imgLowerEyected.visible = true
                imgUpper.visible = false
                imgUpperEyected.visible = true
            }
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

        function onMicrocontrollerConnectionStatus(status) {
            console.log("Señal recibida, status:", status, "tipo:", typeof status)

            if (status) {
                rectStatus1.color = "green";
                rectStatus2.color = "green";
            } else {
                rectStatus2.color = "red";
            }
        }
    }

    camera.cameraDevice: mediaDevices.videoInputs.length
                         > 1 ? mediaDevices.videoInputs[1] // Cambia el índice según la cámara deseada
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

    loader.onLoaded: parent.forceActiveFocus() // Forzar foco también en el segundo Loader    
}
