import QtQuick 2.12

Rectangle {
    anchors.fill: parent
    color: "transparent"
    Column{
        height: parent.height * 4 / 5
        width: parent.width
        anchors.centerIn: parent
        spacing: parent.height * 0.07
        //用户图标
        Image{
            source: "qrc:/user1.png"
            height: parent.height * 0.17
            width: height
            fillMode: Image.PreserveAspectFit
            horizontalAlignment: Image.AlignHCenter
            verticalAlignment: Image.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        //用户名
        Rectangle{
            border.color: "#03B3C7"
            border.width: 1
            color: "transparent"
            height: parent.height * 0.15
            width: parent.width * 0.8
            radius: height / 6
            anchors.horizontalCenter: parent.horizontalCenter

            Image{
                source:"qrc:/user.png"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: parent.width * 0.05
            }
        }

        //密码
        Rectangle{
            border.color: "#03B3C7"
            border.width: 1
            color: "transparent"
            height: parent.height * 0.15
            width: parent.width * 0.8
            radius: height / 6
            anchors.horizontalCenter: parent.horizontalCenter
            Image{
                source:"qrc:/password.png"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: parent.width * 0.05
            }
        }

        //登录
        Rectangle{
            border.color: "#03B3C7"
            border.width: 1
            color: "#1296db"
            height: parent.height * 0.15
            width: parent.width * 0.8
            radius: height / 6
            anchors.horizontalCenter: parent.horizontalCenter
            Text{
                anchors.centerIn: parent
                text: "登录"
                font.pixelSize: parent.height * 0.5
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                color: "white"
            }
        }

        //忘记密码   注册
        Rectangle{
            border.color: "transparent"
            border.width: 0
            color: "transparent"
            height: parent.height * 0.15
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
                font.pixelSize: parent.height * 0.3
                color: "white"
            }

            Text{
                text: "注册"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: parent.height * 0.3
                color: "white"
            }
        }
    }
}

