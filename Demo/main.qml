import QtQuick 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.12

Window {
    id: root_window
    visible: true
    color: "transparent"
    flags: Qt.Window | Qt.FramelessWindowHint | Qt.WindowMinMaxButtonsHint

    property int margins: 10
    width: 480+20
    height: 680+20

    //留阴影区域
    Item{
        anchors.fill: parent
        anchors.margins: root_window.margins
        Rectangle{
            id: root_shadow
            anchors.fill: parent
            color: "#021B39"
            layer.enabled: true
            layer.effect: DropShadow {
                radius: 8
                horizontalOffset: 1
                verticalOffset: 1
                //samples: 8
                color: "gray"
                spread: 0.1
            }
        }

        //用户登录界面
        LogIn{
            id:login
            visible: true
            onGoLogin: {
                console.log("登录中")
                face.visible = true
            }
        }

        //人脸识别界面
        FaceIdentify{
            id:face
            visible: false

        }
    }
}
