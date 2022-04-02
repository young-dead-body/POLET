

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick 2.0
import QtQuick.Controls
//import QtCharts 2.15
import "script.js" as Script

//импортируем код из файла Javascript, назовем этот код именем Script
Rectangle {

    width: 1200
    height: 720

    color: Constants.backgroundColor

    /*ChartView {
        x: 200
        y: 430

        width: 639
        height: 497

        LineSeries {
            id: graph
            axisX: ValueAxis {
                min: 0
                max: 150
            }
            axisY: ValueAxis {
                min: -150
                max: 150
            }
        }
    }*/

    Item {
        // @disable-check M221
        Timer {
            interval: 50
            running: true
            repeat: true
            //onTriggered: time.text = Date().toString()
            // @disable-check M222
            onTriggered: Script.run(frame)
        }

        Text {
            id: time
        }
    }

    Image {
        id: layer1
        x: 200
        y: 2
        width: 190
        height: 167
        source: "images/Layer 1.png"
        fillMode: Image.PreserveAspectFit

        Frame {
            id: frame
            x: 91
            y: 93
            width: 7
            height: 6
            rotation: -131.647

            Image {
                id: untitled2
                x: -11
                y: -82
                width: 30
                height: 92
                source: "images/Untitled-2.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    Button {
        id: button
        x: 421
        y: 298
        text: qsTr("Button")
    }

    ListView {
        id: listView
        anchors.fill: parent
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                spacing: 10
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
            }
        }
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:12}
}
##^##*/
