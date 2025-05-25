import QtQuick

MainScreenForm {
    Connections {
        target: serialManager
        function onLogUpdate(){
        txtLog.text = serialManager.getLogMessage()
        }
        function onCoreDataReady() {
            console.log("aDPI", dpi1)
            console.log("aDPI2", dpi2)
            console.log("aDPI3", dpi3)
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
            txtAccelXVal.text = accelX.toFixed(2)
            txtAccelYVal.text = accelY.toFixed(2)
            txtAccelZVal.text = accelZ.toFixed(2)
            txtLatVal.text = serialManager.getLastDataInList(8, -1)
            txtLonVal.text = serialManager.getLastDataInList(9, -1)

            let actualTime = serialManager.getActualTime() //serialManager.getCurrentTimeMSmString(0)
            timerVal.text = "T: +" + actualTime


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
                txtTittleAscent.color = "white"

                txtTittleApogee.font.bold = false
                txtTittleApogee.color = "#80000000"

                txtTittleMainChute.font.bold = false
                txtTittleMainChute.color = "#80000000"

                txtTittleTouchDown.font.bold = false
                txtTittleTouchDown.color = "#80000000"

                timeLineValue.width = 0


            }else if (rocketStatus == 2 || rocketStatus == 3){
                // ascent or boost
                txtTittleAscent.font.bold = true
                txtTittleAscent.color = "white"

                txtTittleApogee.font.bold = false
                txtTittleApogee.color = "#80000000"

                txtTittleMainChute.font.bold = false
                txtTittleMainChute.color = "#80000000"

                txtTittleTouchDown.font.bold = false
                txtTittleTouchDown.color = "#80000000"

                timeLineValue.width = ascent_start_bar + (currentAlt/estApogeeAlt)* (apogee_start_bar-ascent_start_bar)


            }else if (rocketStatus ==4){
                // apogee
                txtTittleAscent.font.bold = true
                txtTittleAscent.color = "#80000000"

                txtTittleApogee.font.bold = true
                txtTittleApogee.color = "white"

                txtTittleMainChute.font.bold = false
                txtTittleMainChute.color = "#80000000"

                txtTittleTouchDown.font.bold = false
                txtTittleTouchDown.color = "#80000000"

                timeLineValue.width = apogee_start_bar + ((estApogeeAlt-currentAlt)/(estApogeeAlt-estMainAlt))* (main_start_bar-apogee_start_bar)



            }else if (rocketStatus ==5){
                // main
                txtTittleAscent.font.bold = true
                txtTittleAscent.color = "#80000000"

                txtTittleApogee.font.bold = true
                txtTittleApogee.color = "#80000000"

                txtTittleMainChute.font.bold = true
                txtTittleMainChute.color = "white"

                txtTittleTouchDown.font.bold = false
                txtTittleTouchDown.color = "#80000000"

                timeLineValue.width = main_start_bar + ((estMainAlt-currentAlt)/(estMainAlt))*(0.4*widthTimeline)


            }else if (rocketStatus ==6){
                // touch down
                txtTittleAscent.font.bold = true
                txtTittleAscent.color = "#80000000"

                txtTittleApogee.font.bold = true
                txtTittleApogee.color = "#80000000"

                txtTittleMainChute.font.bold = true
                txtTittleMainChute.color = "#80000000"

                txtTittleTouchDown.font.bold = true
                txtTittleTouchDown.color = "white"

                timeLineValue.width = widthTimeline*1
            }


            // --- Dial Behaviour ---
            accelZDial.value = Math.abs(accelZ)
            accelXDial.value = Math.abs(accelX)
            accelYDial.value = Math.abs(accelY)
            altitudeDial.value = currentAlt
            speedDial.value = Math.abs(serialManager.getLastDataInList(12, -1).toFixed(0))

            // --- Alt graph ---
            axisXGraphAltitude.max = serialManager.getCurrentTimeSFloat()
            axisYGraphAltitude.min =  serialManager.getCurrentAltMinValue() - 1
            axisYGraphAltitude.max = serialManager.getCurrentAltMaxValue() + 1

            altitudeSeries.append(serialManager.getCurrentTimeSFloat(),currentAlt)

            if (altitudeSeries.count>100+1) {
                altitudeSeries.remove(0)  // Remove the first point (oldest)
            }
            axisXGraphAltitude.min = altitudeSeries.at(0).x

            _final.eulerRotation.z = serialManager.getLastDataInList(6, -1)
            _final.eulerRotation.y = serialManager.getLastDataInList(5, -1)
            _final.eulerRotation.x = -90 + serialManager.getLastDataInList(4, -1)


        }
        function onMicrocontrollerConnectionStatus(status) {
            console.log("Señal recibida, status:", status, "tipo:", typeof status)

            if (status) {
                rectTelStat.color = "green";
            } else {
                rectTelStat.color = "red";
            }
        }
    }

    camera.cameraDevice: mediaDevices.videoInputs.length
                         > 1 ? mediaDevices.videoInputs[0] // Cambia el índice según la cámara deseada
                             : mediaDevices.defaultVideoInput

    Component.onCompleted: camera.start()

    // ------

    accelZDial.to: 20
    accelXDial.to: 20
    accelYDial.to: 20
    altitudeDial.to: serialManager.getEstApogeeAlt()
    speedDial.to: 340
}

