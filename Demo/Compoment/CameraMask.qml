import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.1

Canvas {
    id:mask
    property int scanWidth: width
    property int temp: 18
    onPaint: {
        var ctx = getContext("2d")
        ctx.fillStyle = Qt.rgba(0,0,0,0.4)
        //画一个框
        ctx.fillRect(0,0,width,height)
        ctx.clearRect(width/2.-scanWidth/2.,height/2.-scanWidth/2.,scanWidth,scanWidth)
//        //画左上的边角
//        ctx.lineWidth = 3
//        ctx.strokeStyle = "lightgreen"
//        ctx.beginPath()
//        ctx.moveTo(width/2.-scanWidth/2.+temp,height/2.-scanWidth/2.)
//        ctx.lineTo(width/2.-scanWidth/2.,height/2.-scanWidth/2.)
//        ctx.lineTo(width/2.-scanWidth/2.,height/2.-scanWidth/2.+temp)
//        //画右上的边角
//        ctx.moveTo(width/2.+scanWidth/2.-temp,height/2.-scanWidth/2.)
//        ctx.lineTo(width/2.+scanWidth/2.,height/2.-scanWidth/2.)
//        ctx.lineTo(width/2.+scanWidth/2.,height/2.-scanWidth/2.+temp)

//        //画左下的边角
//        ctx.moveTo(width/2.-scanWidth/2.,height/2.+scanWidth/2.-temp)
//        ctx.lineTo(width/2.-scanWidth/2.,height/2.+scanWidth/2.)
//        ctx.lineTo(width/2.-scanWidth/2.+temp,height/2.+scanWidth/2.)

//        //画右下的边角
//        ctx.moveTo(width/2.+scanWidth/2.-temp,height/2.+scanWidth/2.)
//        ctx.lineTo(width/2.+scanWidth/2.,height/2.+scanWidth/2.)
//        ctx.lineTo(width/2.+scanWidth/2.,height/2.+scanWidth/2.-temp)
        ctx.stroke()
    }

//    Label{
//        anchors.horizontalCenter: parent.horizontalCenter
//        width: parent.width
//        horizontalAlignment: Qt.AlignHCenter
//        color: "white"
//        anchors.top: parent.top
//        anchors.topMargin: mask.height/2. + scanWidth/2. + 15
//        text: qsTr("将二维码放入框内，即可自动扫描")
//        font.pixelSize: 40
//    }

    Image {
        id: line
        source: "qrc:/bg_scan_line.png"
        width: scanWidth
        height: 4
        anchors.horizontalCenter: parent.horizontalCenter

        PropertyAnimation{
            id:ani
            target:line
            properties: "y"
            duration: 1500
            from:mask.height/2. - scanWidth/2.
            running: true
            to:mask.height/2. + scanWidth/2.
            onStopped: {
                y=mask.height/2. - scanWidth/2.
                ani.start()
            }
        }
    }
}
