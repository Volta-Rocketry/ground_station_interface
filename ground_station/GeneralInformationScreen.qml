import QtQuick 2.0

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: "lightgray"

        Image {
            id: image
            x: 360
            y: 204
            width: 100
            height: 100
            source: ":/images/images/a.png"
            fillMode: Image.PreserveAspectFit

            Component.onCompleted: {
                    console.log("Intentando cargar imagen:", source);
                    console.log("Estado de la imagen:", status);
                }
        }
    }
}
