import QtQuick 2.12
import QtQuick.Templates 2.12 as T
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12

//输入框
T.TextField{
    id: control

    color: "white"
    font{
        family: "SimHei"
        pixelSize: parent.height * 0.3
        weight: Font.Bold
    }

    padding: 6
    leftPadding: padding+4
    //placeholderText: "Input Password"
    placeholderTextColor: "gray"
    verticalAlignment: TextInput.AlignVCenter

    selectByMouse: true
    selectedTextColor: "white"
    selectionColor: "black"

    //作为密码框
    //显示模式：Normal普通文本，Password密码，NoEcho无显示，
    //PasswordEchoOnEdit显示在编辑时输入的字符，否则与相同TextInput.Password
    //echoMode: TextInput.Password
    //passwordCharacter: "*"
    passwordMaskDelay: 1000

    PlaceholderText {
        id: placeholder
        x: control.leftPadding
        y: control.topPadding
        width: control.width - (control.leftPadding + control.rightPadding)
        height: control.height - (control.topPadding + control.bottomPadding)

        text: control.placeholderText
        font: control.font
        color: control.placeholderTextColor
        verticalAlignment: control.verticalAlignment
//        horizontalAlignment: control.horizontalAlignment
        visible: !control.length && !control.preeditText && (!control.activeFocus || control.horizontalAlignment !== Qt.AlignHCenter)
        elide: Text.ElideMiddle
        renderType: control.renderType
    }
    background: Rectangle {
        color: "transparent"
        border.color: "transparent"
        border.width: 0
    }
}
