import QtQuick

ConfigurationScreenForm {

    btnSearch.onClicked: {

        cbSerialPortModel.clear()

        cbSerialPortModel.append({
                                     "key": "Test Mode"
                                 })

        let ports = serialManager.searchPortInfo()

        for (var i = 0; i < ports.length; i++) {
            cbSerialPortModel.append({
                                         "key": ports[i]
                                     })
        }
    }

    cbBaudRate.onActivated: serialManager.setBaudRateMode(cbBaudRate.currentIndex)

    cbSerialPort.onActivated: serialManager.savePortConnection(cbSerialPort.currentText)

    btnConnect.onClicked: serialManager.microcontrollerConnection()
}
