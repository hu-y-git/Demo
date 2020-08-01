import QtQuick 2.12
import QtQuick.Controls 1.4

//人脸识别界面
Rectangle {

    signal faceInfo()

    anchors.fill: parent
    color: "transparent"
    Column{
        anchors.fill: parent
        height: parent.height
        width: parent.width
        spacing: parent.height * 0.02

        //人脸扫描框
        BorderImage {
            width: parent.width
            height: parent.height * 0.85
            source:"qrc:/pdbod_selcet.png"
            border.left: 31; border.top: 31
            border.right: 31; border.bottom: 31
            ScanPage{
                anchors.fill: parent
                height:parent.height
                width:parent.width
                anchors.margins: 10
            }
        }

        Row{
            width: parent.width
            height: parent.height * 0.07
            spacing: parent.width * 0.1

            //人员识信息
            Rectangle{
                border.color: "#03B3C7"
                border.width: 1
                color: "#1296db"
                height: parent.height
                width: parent.width * 0.45
                radius: height / 6
                Text{
                    anchors.centerIn: parent
                    text: "人员识别"
                    font.pixelSize: parent.height * 0.35
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true
                    color: "white"
                    font.family: "SimHei"
                }
                MouseArea{
                    anchors.fill: parent
//                    onClicked: {
//                        goLogin()
//                    }
                }
            }

            //我的信息
            Rectangle{
                border.color: "#03B3C7"
                border.width: 1
                color: "#1296db"
                height: parent.height
                width: parent.width * 0.45
                radius: height / 6
                Text{
                    anchors.centerIn: parent
                    text: "我的信息"
                    font.pixelSize: parent.height * 0.35
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true
                    color: "white"
                    font.family: "SimHei"
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        faceInfo()
                    }
                }
            }
        }
    }
}


