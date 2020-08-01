import QtQuick 2.0

//人员信息
Rectangle {
    id:control
    anchors.fill: parent
    color: "transparent"

    signal ackHome()


    Row
    {
        id:icon
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        width: parent.width
        height: parent.height * 0.1
        anchors.topMargin: parent.width * 0.02
        anchors.bottomMargin: parent.width * 0.01
        anchors.leftMargin: parent.width * 0.05
        anchors.rightMargin: parent.width * 0.05
        spacing: parent.width - height * 2 - anchors.leftMargin - anchors.rightMargin

        Image{
            source: "qrc:/icon.png"
            height: parent.height
            width: height
            fillMode: Image.PreserveAspectFit
            //horizontalAlignment: Image.AlignLeft
        }

        Image{
            source: "qrc:/icon.png"
            height: parent.height
            width: height
            fillMode: Image.PreserveAspectFit
            //horizontalAlignment: Image.AlignRight
        }
    }

    Rectangle{
        anchors.top: icon.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: "transparent"
        Column{
            anchors.fill: parent
            anchors.margins: parent.width * 0.04

            Row{
                width: parent.width
                height: parent.height * 0.23
                Column{
                    height: parent.height
                    width: parent.width * 0.7
                    spacing: height * 0.1
                    //姓名
                    Text{
                        height: parent.height * 0.3
                        width: parent.width
                        text: "姓名:  张三"
                        font.pixelSize: height * 0.5
                        //verticalAlignment: Text.AlignVCenter
                        //horizontalAlignment: Text.AlignHCenter

                        color: "black"
                        font.family: "SimHei"
                    }

                    //部门
                    Text{
                        height: parent.height * 0.3
                        width: parent.width
                        text: "部门:  设备部"
                        font.pixelSize: height * 0.5
                        color: "black"
                        font.family: "SimHei"
                    }

                    //电话
                    Text{
                        height: parent.height * 0.3
                        width: parent.width
                        text: "电话:  131xxxxxxxx"
                        font.pixelSize: height * 0.5
                        color: "black"
                        font.family: "SimHei"
                    }
                }

                Rectangle{
                    height: parent.height
                    width: parent.width * 0.3
                    border.color: "#03B3C7"
                    border.width: 1
                    radius: parent.height * 0.02
                    Image{
                        anchors.fill: parent
                        source: "qrc:/cunzhao.jpg"
                    }
                }
            }

            Rectangle{
                height: parent.height * 0.11
                width: parent.width
                color: "transparent"
                Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "工作票信息"
                    anchors.fill: parent
                    font.pixelSize: height * 0.4
                    font.bold: true
                    font.family: "SimHei"
                }
            }


            Rectangle{
                height: parent.height * 0.09
                width: parent.width
                color: "transparent"
                Text{
                    //horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "工作票号：RKP-1111-11"
                    anchors.fill: parent
                    font.pixelSize: height * 0.4
                    font.bold: true
                    font.family: "SimHei"
                }
            }

            Rectangle{
                height: parent.height * 0.09
                width: parent.width
                color: "transparent"
                Text{
                    //horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "工作地点：XXXXXXXXXXXXXXXXXXXX"
                    anchors.fill: parent
                    font.pixelSize: height * 0.4
                    font.bold: true
                    font.family: "SimHei"
                }
            }

            Rectangle{
                height: parent.height * 0.09
                width: parent.width
                color: "transparent"
                Text{
                    //horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "开始时间: 2020-08-01"
                    anchors.fill: parent
                    font.pixelSize: height * 0.4
                    font.bold: true
                    font.family: "SimHei"
                }
            }

            Rectangle{
                height: parent.height * 0.09
                width: parent.width
                color: "transparent"
                Text{
                    //horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "结束时间: 2020-08-01"
                    anchors.fill: parent
                    font.pixelSize: height * 0.4
                    font.bold: true
                    font.family: "SimHei"
                }
            }

            Rectangle{
                height: parent.height * 0.09
                width: parent.width
                color: "transparent"
                Text{
                    //horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "工票负责人:某某某"
                    anchors.fill: parent
                    font.pixelSize: height * 0.4
                    font.bold: true
                    font.family: "SimHei"
                }
            }

            Rectangle{
                height: parent.height * 0.09
                width: parent.width
                color: "transparent"
                Text{
                    //horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "工作班成员: 某某某,某某某,"
                    anchors.fill: parent
                    font.pixelSize: height * 0.4
                    font.bold: true
                    font.family: "SimHei"
                }
            }
        }

        Row{
            width: parent.width
            height: parent.height * 0.07
            spacing: parent.width * 0.1
            anchors.bottom: parent.bottom
            anchors.bottomMargin: height * 0.2

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
                    text: "返回主页"
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
                        ackHome()
                    }
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
                    text: "保存记录"
                    font.pixelSize: parent.height * 0.35
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true
                    color: "white"
                    font.family: "SimHei"
                }
                MouseArea{
                    anchors.fill: parent

                }
            }
        }
    }
}
