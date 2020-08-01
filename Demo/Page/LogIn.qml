import QtQuick 2.12
import QtQuick.Controls 1.4

//登录界面
Rectangle {
    signal goLogin()
    anchors.fill: parent
    color: "transparent"
    Column{
//        height: parent.height * 4 / 5
//        width: parent.width
        anchors.fill: parent
        spacing: parent.height * 0.02
        //用户图标
        Image{
            source: "qrc:/icon.png"
            height: parent.height * 0.17
            width: height
            fillMode: Image.PreserveAspectFit
            horizontalAlignment: Image.AlignHCenter
            verticalAlignment: Image.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        //公司名
        Rectangle{
            height: parent.height * 0.1
            width: parent.width
            color: "transparent"
            Text{
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: "国电蚌埠发电有限公司"
                anchors.fill: parent
                font.pixelSize: height * 0.5
                font.bold: true
                font.family: "SimHei"
            }
        }

        Rectangle{
            height: parent.height * 0.1
            width: parent.width
            color: "transparent"
            Text{
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: "人员识别系统"
                anchors.fill: parent
                font.pixelSize: height * 0.5
                font.bold: true
                font.family: "SimHei"
            }
        }

        //用户名
        Rectangle{
            border.color: "#03B3C7"
            border.width: 1
            color: "transparent"
            height: parent.height * 0.07
            width: parent.width * 0.8
            radius: height / 6
            anchors.horizontalCenter: parent.horizontalCenter

            Image{
                id:user_img
                source:"qrc:/user.png"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: parent.width * 0.05
            }

            MyTextField {
                placeholderText: "请输入用户名"
                height:parent.height
                anchors.left: user_img.right
                width:parent.width - user_img.width
                font.family: "SimHei"
            }
        }

        //密码
        Rectangle{
            border.color: "#03B3C7"
            border.width: 1
            color: "transparent"
            height: parent.height * 0.07
            width: parent.width * 0.8
            radius: height / 6
            anchors.horizontalCenter: parent.horizontalCenter
            Image{
                id:pass_img
                source:"qrc:/password.png"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: parent.width * 0.05
            }

            MyTextField {
                height:parent.height
                placeholderText: "请输入密码器"
                echoMode: TextInput.Password
                anchors.left: pass_img.right
                width:parent.width - pass_img.width
                font.family: "SimHei"
            }
        }

        //登录
        Rectangle{
            border.color: "#03B3C7"
            border.width: 1
            color: "#1296db"
            height: parent.height * 0.07
            width: parent.width * 0.8
            radius: height / 6
            anchors.horizontalCenter: parent.horizontalCenter
            Text{
                anchors.centerIn: parent
                text: "登录"
                font.pixelSize: parent.height * 0.4
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                color: "white"
                font.family: "SimHei"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    goLogin()
                }
            }
        }

        //忘记密码   注册
        Rectangle{
            border.color: "transparent"
            border.width: 0
            color: "transparent"
            height: parent.height * 0.07
            width: parent.width * 0.8
            radius: height / 2
            anchors.horizontalCenter: parent.horizontalCenter

            Text{
                text: "忘记密码?"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: parent.height * 0.4
                color: "white"
                font.family: "SimHei"
            }

            Text{
                text: "注册"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: parent.height * 0.4
                color: "white"
                font.family: "SimHei"
            }
        }
    }
}











