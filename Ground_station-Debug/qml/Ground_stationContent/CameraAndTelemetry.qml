import QtQuick

CameraAndTelemetryForm {

    Connections {
        target: serialManager
        function onCoreDataReady() {

            // Texts sectionMainData
            txtAltMVal.text = serialManager.getLastDataInList(7, -1)
            txtAltFtVal.text = serialManager.getLastDataInList(7, -1)
            txtSpeedMVal.text = serialManager.getLastDataInList(12,-1)
            txtSpeedFtVal.text = serialManager.getLastDataInList(12,-1)

            let accelX = serialManager.getLastDataInList(1,-1)
            let accelY = serialManager.getLastDataInList(2,-1)
            let accelZ = serialManager.getLastDataInList(3,-1)
            console.log(accelX)
            console.log(accelY)
            console.log(accelZ)
            let accelGeneral = Math.sqrt(Math.pow(accelX,2)+Math.pow(accelY,2)+Math.pow(accelZ,2)).toFixed(2)
            console.log(accelGeneral)
            txtAccelVal.text = accelGeneral.toString()
            txtLatVal.text = serialManager.getLastDataInList(8,-1)
            txtLonVal.text = serialManager.getLastDataInList(9,-1)

            let actualTime = serialManager.getCurrentTimeMSmString(0)
            txtTimerVal.text = "T: +"+actualTime
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
}
