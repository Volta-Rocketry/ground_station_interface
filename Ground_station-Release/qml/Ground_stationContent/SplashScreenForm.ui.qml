/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import Ground_station

Rectangle {
    id: background
    width: Constants.width
    height: Constants.height
    color: Constants.mainColor

    Image {
        id: img_delta
        x: 238
        y: 8
        width: 62
        height: 72
        source: "images/deltav_fullblanco_reduccion.png"
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: image
        x: 238
        y: 78
        width: 164
        height: 158
        source: "qrc:/qtquickplugin/images/template_image.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: voyager
        x: 337
        y: 19
        width: 50
        source: "images/Voyager.png"
        fillMode: Image.PreserveAspectFit
    }



    BusyIndicator {
        id: busyIndicator
        x: 283
        y: 318
        width: 75
        height: 75
        wheelEnabled: false
    }

    Text {
        id: _text
        x: 171
        y: 256
        text: qsTr("GROUND STATION")
        font.pixelSize: 36
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Text {
        id: _text1
        x: 262
        y: 399
        text: qsTr("LOADING...")
        font.pixelSize: 24
    }
}
