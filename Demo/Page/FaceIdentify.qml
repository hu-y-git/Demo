import QtQuick 2.0
import QtQuick.Controls 1.4

//人脸识别界面
Rectangle {
    anchors.fill: parent
    color: "#021B39"
    Column{
        anchors.fill: parent
        spacing: parent.height * 0.07
        anchors.top: parent.top
        anchors.topMargin:parent.width * 0.05
        //人脸扫描框

        BorderImage {
            anchors.left: parent.left
            anchors.right: parent.right
            height: width
            anchors.margins: parent.width * 0.05
            source:"qrc:/pdbod_selcet.png"
            border.left: 31; border.top: 31
            border.right: 31; border.bottom: 31
        }

        //进度框
        Image
        {
            width: parent.width/4
            height:width
            source: "qrc:/zy2.png"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            RotationAnimation on rotation {
                from: 0
                to: 360
                duration: 1500
                loops: Animation.Infinite
            }
        }
    }
}


