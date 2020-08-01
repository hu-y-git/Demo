import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.1
import QtMultimedia 5.12
import QtQuick.Controls.Material 2.1

Page{
    id: root

    property int detectedTags: 0
    property string content: ""
    signal sendQrcode(string result);
    Label
    {
        id: text1
        wrapMode: Text.Wrap
        color:"white"
        z: 50
        visible: false
        text: "Detected count: " + detectedTags
    }

    Camera
    {
        id:camera
        position: Camera.FrontFace
    }

    VideoOutput
    {
        id: videoOutput
        source: camera
        anchors.fill: parent
        autoOrientation: true
        fillMode: VideoOutput.PreserveAspectCrop
        //filters: [ zxingFilter ]
    }
    //移动的线
    Image {
        id: line
        source: "qrc:/bg_scan_line.png"
        width: parent.width
        height: 4
        anchors.horizontalCenter: parent.horizontalCenter

        PropertyAnimation{
            id:ani
            target:line
            properties: "y"
            duration: 4500
            from:parent.height/2. - parent.width/2.
            running: true
            to:parent.height/2. + parent.width/2.
            onStopped: {
                y=parent.height/2. - parent.width/2.
                ani.start()
            }
        }
    }

    Timer{
        running: root.visible
        interval: 1000
        repeat: true
        onTriggered: {
            camera.searchAndLock()
        }
    }


//    QZXingFilter
//    {
//        id: zxingFilter
//        captureRect: {
//            // setup bindings
//            videoOutput.contentRect;
//            videoOutput.sourceRect;
//            //识别的区域，这里设置为整个屏幕，否则在有些设备上会识别不出来
//            return videoOutput.mapRectToSource(videoOutput.mapNormalizedRectToItem(Qt.rect(0, 0, 1.0, 1.0)));
//        }

//        decoder {
//            enabledDecoders: QZXing.DecoderFormat_EAN_13 | QZXing.DecoderFormat_CODE_39 | QZXing.DecoderFormat_QR_CODE
//            onTagFound: {
//                console.log(tag + " | " + decoder.foundedFormat() + " | " + decoder.charSet());

//                root.detectedTags++;
//                root.content = tag;
//                sendQrcode("SN:" + content);
//            }

//            tryHarder: false
//        }

//        onDecodingStarted:
//        {
////            console.log("started");
//        }

//        property int framesDecoded: 0
//        property real timePerFrameDecode: 0

//        onDecodingFinished:
//        {
//           timePerFrameDecode = (decodeTime + framesDecoded * timePerFrameDecode) / (framesDecoded + 1);
//           framesDecoded++;
////           console.log("frame finished: " + succeeded, decodeTime, timePerFrameDecode, framesDecoded);
//        }
//    }

//    Label
//    {
//        wrapMode: Text.Wrap
//        color:"white"
//        anchors.bottom: parent.bottom
//        z: 50
//        font.pixelSize: 50
//        text: "SN: " + content
////        visible: false
//    }
}


//Item {

//      Camera {
//          id: camera
//          position: Camera.FrontFace
//      }

//      VideoOutput {
//          anchors.fill: parent
//          source: camera
//      }

//      ListView {
//          anchors.fill: parent
//          model: QtMultimedia.availableCameras
//          delegate: Text {
//              text: modelData.displayName + modelData.deviceId

//              MouseArea {
//                  anchors.fill: parent
//                  onClicked: camera.deviceId = modelData.deviceId
//              }
//          }
//      }
//  }
