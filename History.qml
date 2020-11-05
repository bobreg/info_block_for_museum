import QtQuick 2.0

Item {
    id: history
    width: 1080
    height: 1920
    property bool flag_en: false
    property alias flagEn: history.flag_en

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 1080
        height: 1920
        color: "#ffffff"



        Rectangle {
            id: rectangle
            x: 469
            y: 862
            width: 611
            height: 767
            color: "#eaeaea"
        }


        Text {
            id: text1
            x: 236
            y: 1174
            width: 609
            height: 79
            /*text:{
                if(history.flag_en === false){
                    qsTr("Сварка труб газопровода, 1944 г. Работа на газопроводе. 2019 г.")
                }else{
                    qsTr("Welding of gas pipelines, 1944. Work on the gas pipeline. Dec 2019.")
                }
            }*/
            text:{
                if(history.flag_en === false){
                    switch(caruselPhotos.currentIndex){
                    case 0:
                        qsTr("Тётка с мужиком против тётки с кастрюлей.");
                        break;
                    case 1:
                        qsTr("Что-то непонятное и что-то непонятное.");
                        break;
                    case 2:
                        qsTr("Сварка труб газопровода, 1944 г. Работа на газопроводе. 2019 г.")
                        break;
                    case 3:
                        qsTr("Чуваки в комбинезончиках и суровые мужики.");
                        break;
                    case 4:
                        qsTr("Чисто и грязно.");
                        break;
                    }

                }else{
                    switch(caruselPhotos.currentIndex){
                    case 0:
                        qsTr("An aunt with a man against an aunt with a saucepan.")
                        break;
                    case 1:
                        qsTr("Something incomprehensible and something incomprehensible.")
                        break;
                    case 2:
                        qsTr("Welding of gas pipelines, 1944. Work on the gas pipeline. Dec 2019.")
                        break;
                    case 3:
                        qsTr("Dudes in overalls and tough men.")
                        break;
                    case 4:
                        qsTr("Clean and dirty.")
                        break;
                    }

                }
            }

            font.pixelSize: 28
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.weight: Font.Bold
            font.family: "Montserrat"
            //text: "Сварка труб газопровода, 1944 г. Работа на газопроводе. 2019 г."
        }







        Rectangle {
            id: rectangle3
            x: 60
            y: 313
            width: 960
            height: 830
            color: "#ffffff"
            clip: true

            Image {
                id: podlojka
                x: 0
                y: 0
                width: 960
                height: 830
                fillMode: Image.PreserveAspectFit
                //source: "file:///d:/from_work/forkisa/surs/photos/1_Gazovaya_Plita_1950-E.jpg"
                source: "file:///C:/Users/Public/photos/1_Gazovaya_Plita_1950-E.jpg"

            }

            Rectangle {
                id: rectangle2
                x: 0
                y: 0
                width: 480
                height: 830
                color: "#ffffff"
                clip: true


                Image {
                    id: topchik
                    x: 0
                    y: 0
                    width: 960
                    height: 830
                    fillMode: Image.PreserveAspectFit
                    //source: "file:///d:/from_work/forkisa/surs/photos/1_1_Gazovaya_Plita_2019.jpg"
                    source: "file:///C:/Users/Public/photos/1_1_Gazovaya_Plita_2019.jpg"
                }

            }

            Image {
                id: image3
                x: 430
                y: 0
                fillMode: Image.PreserveAspectFit
                source: "surs/elements/slider-long.svg"
                onXChanged: {
                    rectangle2.width = image3.x + 50;
                }
            }

            MouseArea {
                id: mouseArea
                x: 0
                y: 0
                width: 960
                height: 830
                drag.target: image3
                drag.axis: Drag.XAxis
                drag.minimumX: -50
                drag.maximumX: mouseArea.width - 50
            }
        }



        Rectangle {
            id: rectangle4
            x: 360
            y: 1290
            width: 360
            height: 220
            color: "#0c90fc"
            radius: 10
        }

        Item {
            id: element
            x: 0
            y: 1300
            width: 1080
            height: 200

            CaruselPhotos {
                id: caruselPhotos
                x: -210
                y: 0
                width: 1500
                height: parent.height
                interactive: true
                flickDeceleration: 200
                offset: 0
                highlightRangeMode: PathView.StrictlyEnforceRange
                preferredHighlightBegin: 0.5
                preferredHighlightEnd: 1
                onMovementStarted: {
                    rectangle4.visible = false;
                }
                onMovementEnded: {
                    rectangle4.visible = true;
                    caruselPhotos.changePhotos();
                }
                function changePhotos(){
                    switch(caruselPhotos.currentIndex){
                    case 0:
                        podlojka.source = "file:///C:/Users/Public/photos/1_Gazovaya_Plita_1950-E.jpg";
                        topchik.source = "file:///C:/Users/Public/photos/1_1_Gazovaya_Plita_2019.jpg"
                        break;
                    case 1:
                        podlojka.source = "file:///C:/Users/Public/photos/2_Gazoprovod_1965_-_1970.jpg";
                        topchik.source = "file:///C:/Users/Public/photos/2_1_Gazoprovod_2015_G.jpg"
                        break;
                    case 2:
                        podlojka.source = "file:///C:/Users/Public/photos/3_Svarka_Trub_Gazoprovoda_1944_G.jpg";
                        topchik.source = "file:///C:/Users/Public/photos/3_1_Rabota_Na_Gazoprovode_2019_G.jpg"
                        break;
                    case 3:
                        podlojka.source = "file:///C:/Users/Public/photos/4_Stroitelstvo_Gazoprovoda_1970-E.jpg";
                        topchik.source = "file:///C:/Users/Public/photos/4_1_Gazoprovod_Sovremennye_Tekhnologii.jpg"
                        break;
                    case 4:
                        podlojka.source = "file:///C:/Users/Public/photos/5_Kotelnaya_ugol__1910-E_Gg.jpg";
                        topchik.source = "file:///C:/Users/Public/photos/5_1_Kotelnaya_gaz__2020_G.jpg"
                        break;
                    }
                }
            }
        }

        Image {
            id: image1
            x: 960
            y: 1370
            fillMode: Image.PreserveAspectFit
            source: "surs/elements/button_right.svg"
        }


        Image {
            id: image
            x: 60
            y: 1370
            fillMode: Image.PreserveAspectFit
            source: "surs/elements/button_left.svg"
        }


        MouseArea {
            id: mouseArea1
            x: 939
            y: 1350
            width: 100
            height: 100
            onClicked: {
                caruselPhotos.decrementCurrentIndex()
                rectangle4.visible = false;
                timer.start()

            }
        }


        MouseArea {
            id: mouseArea2
            x: 38
            y: 1350
            width: 100
            height: 100
            onClicked: {
                caruselPhotos.incrementCurrentIndex()
                rectangle4.visible = false;
                timer.start()
            }
        }
    }
    Timer{
        id: timer
        interval: 300
        repeat: false
        onTriggered: {
            rectangle4.visible = true;
            caruselPhotos.changePhotos();
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
