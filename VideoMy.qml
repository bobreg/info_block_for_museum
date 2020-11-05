import QtQuick 2.0
import QtMultimedia 5.12
import QtQuick.Controls 2.0

Item{
    id: video
    width: 1080
    height: 1920
    property bool flag_en: false
    property alias flagEn: video.flag_en

    Timer{
        interval: 200; running: true; repeat: true
        onTriggered: {
            curcle_now.x = (item1.width / vide.duration) * vide.position - 9;
            //text1.text = vide.position;
            //text2.text = (item1.width / vide.duration) * vide.position;
            rectancle_past.width = (item1.width / vide.duration) * vide.position;
            rectangle_future.width = item1.width - ((item1.width / vide.duration) * vide.position);
            rectangle_future.x = (item1.width / vide.duration) * vide.position;
        }
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1080
        height: 1920
        color: "#12142d"
        radius: 0

        Item {
            id: item1
            x: 192
            y: 1213
            width: 828
            height: 12

            Rectangle {
                id: rectancle_past
                x: 0
                y: 0
                width: 828
                height: 5
                color: "#0c90fc"
                radius: 2.5
            }


            Rectangle {
                id: rectangle_future
                x: 0
                y: 0
                width: 828
                height: 5
                color: "#575757"
                radius: 2.5
            }
            Rectangle {
                id: curcle_now
                x: 374
                y: -6
                width: 18
                height: 18
                color: "#0c90fc"
                radius: 9
            }

            MouseArea {
                id: mouseArea
                x: 0
                y: -6
                width: 828
                height: 18
                property int setTimeVideo: 0
                onClicked: {
                    setTimeVideo = mouseArea.mouseX;
                    vide.seek((setTimeVideo * vide.duration) / item1.width);
                    //console.log(setTimeVideo);
                    //curcle_now.x = setTimeVideo;
                    //rectancle_past.width = setTimeVideo;
                }
            }
        }




    }
    Item{
        x: 60
        y: 313
        width: 960
        height: 830

        MediaPlayer{
            id: vide
            //source: "file:///d:/from_work/forkisa/surs/video/infoblok-video.avi"
            source: "file:///C:/Users/Public/video/infoblok-video.mp4"
            autoPlay: true
            loops: -1
        }
        VideoOutput {
            anchors.fill: parent
            source: vide            
        }
    }



    Image {
        id: image_play
        x: 60
        y: 1198
        width: 25
        height: 30
        fillMode: Image.PreserveAspectFit
        source: "surs/elements/button-pause.svg"
    }

    Image {
        id: image_stop
        x: 112
        y: 1198
        width: 30
        height: 30
        fillMode: Image.PreserveAspectFit
        source: "surs/elements/button-stop.svg"
    }




    MouseArea {
        id: mouseArea_play
        x: 60
        y: 1198
        width: 25
        height: 30
        property bool flag_play: true
        onClicked: {
            mouseArea_play.flag_play = !mouseArea_play.flag_play;
            image_play.source = (mouseArea_play.flag_play === true) ? "surs/elements/button-pause.svg" : "surs/elements/button-play-video.svg";
            if(mouseArea_play.flag_play === true){
                vide.play();
            }else{
                vide.pause();
            }
        }
    }

    MouseArea {
        id: mouseArea_stop
        x: 112
        y: 1198
        width: 30
        height: 30
        onClicked: {
            vide.stop();
            vide.play();
            mouseArea_play.flag_play = true;
            image_play.source = "surs/elements/button-pause.svg"
        }
    }
}
