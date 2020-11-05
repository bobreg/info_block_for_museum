import QtQuick 2.0

PathView {
    id: pathView
    x: 0
    y: 0
    width: 1080
    height: 100
    highlightMoveDuration: 300
    preferredHighlightEnd: 1
    preferredHighlightBegin: 0.1
    snapMode: PathView.SnapToItem
    offset: 0
    pathItemCount: 5
    delegate: delegate
    path: path
    model: listPhotos
    //model: 5
    /*onCurrentIndexChanged: {
        console.log(pathView.currentIndex)
    }*/

    Path{
        id: path
        startX: 0
        startY: pathView.height / 2
        PathAttribute {name: "cScale"; value: 1}

        PathLine {
            x: pathView.width / 5
            y: pathView.height / 2
        }
        //PathPercent {value: 0.2}
        PathLine {
            x: pathView.width * 2 / 5 - 50
            y: pathView.height / 2
        }
        PathAttribute {name: "cScale"; value: 1}
        PathPercent {value: 0.4}  //-----------------------


        PathLine {
            x: pathView.width / 2
            y: pathView.height / 2
        }
        PathAttribute {name: "cScale"; value: 1.45}
        PathLine {
            x: pathView.width * 3 / 5 + 50
            y: pathView.height / 2
        }
        PathAttribute {name: "cScale"; value: 1}
        PathPercent {value: 0.6}  //------------------------


        PathLine {
            x: pathView.width * 4 / 5
            y: pathView.height / 2
        }
        //PathPercent {value: 0.8}
        PathLine {
            x: pathView.width
            y: pathView.height / 2
        }
        PathAttribute {name: "cScale"; value: 1}
        //PathPercent {value: 1}
    }

    Component{
        id: delegate
        Image {
            scale: PathView.cScale
            source: imagePaht
            width: 240
            height: 144
        }
        /*Rectangle{
            scale: PathView.Scale
            id: rec
            width: 240
            height: 144
            color: "black"
        }*/
    }

    ListModel {
        id: listPhotos
        ListElement{
            //imagePaht: "file:///d:/from_work/forkisa/surs/photos/original/1_1_Gazovaya_Plita_2019.png"
            imagePaht: "file:///C:/Users/Public/photos/original/1_1_Gazovaya_Plita_2019.png"
        }
        ListElement{
            //imagePaht: "file:///d:/from_work/forkisa/surs/photos/original/2_1_Gazoprovod_2015_G.png"
            imagePaht: "file:///C:/Users/Public/photos/original/2_1_Gazoprovod_2015_G.png"
        }
        ListElement{
            //imagePaht: "file:///d:/from_work/forkisa/surs/photos/original/3_1_Rabota_Na_Gazoprovode_2019_G.png"
            imagePaht: "file:///C:/Users/Public/photos/original/3_1_Rabota_Na_Gazoprovode_2019_G.png"
        }
        ListElement{
            //imagePaht: "file:///d:/from_work/forkisa/surs/photos/original/4_1_Gazoprovod_Sovremennye_Tekhnologii.png"
            imagePaht: "file:///C:/Users/Public/photos/original/4_1_Gazoprovod_Sovremennye_Tekhnologii.png"
        }
        ListElement{
            //imagePaht: "file:///d:/from_work/forkisa/surs/photos/original/5_1_Kotelnaya_gaz__2020_G.png"
            imagePaht: "file:///C:/Users/Public/photos/original/5_1_Kotelnaya_gaz__2020_G.png"
        }
    }
}
