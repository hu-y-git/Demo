﻿import QtQuick 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.12

Window {
    id: root_window
    visible: true
    color: "transparent"
    flags: Qt.Window | Qt.FramelessWindowHint | Qt.WindowMinMaxButtonsHint
    width: 480
    height: 680

//    //留阴影区域
//    Item{
//        anchors.fill: parent
//        anchors.margins: root_window.margins
//        Rectangle{
//            id: root_shadow
//            anchors.fill: parent
//            color: "#021B39"
//            layer.enabled: true
//            layer.effect: DropShadow {
//                radius: 8
//                horizontalOffset: 1
//                verticalOffset: 1
//                //samples: 8
//                color: "gray"
//                spread: 0.1
//            }
//        }

    Image{
        anchors.fill: parent
        source: "qrc:/beijing.jpg"

        //用户登录界面
        LogIn{
            id:login
            visible: true
            onGoLogin: {
                console.log("登录中")
                info.visible = false
                face.visible = true
                login.visible = false
            }
        }

        //人脸识别界面
        FaceIdentify{
            id:face
            visible: false
            onFaceInfo:{
                info.visible = true
                face.visible = false
                login.visible = false
            }
        }

        //人员信息
        FaceInfo{
            id:info
            visible: false
            onAckHome:{
                info.visible = false
                face.visible = true
                login.visible = false
            }
        }
    }
}
