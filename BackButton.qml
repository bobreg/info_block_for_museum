import QtQuick 2.0

Item {
    id: back_button
    width: 193
    height: 60
    signal goStart
    property bool flag_open_faq: false
    property alias open_faq: back_button.flag_open_faq
    property alias enText: text1.text

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 193
        height: 60
        color: {
            if(back_button.flag_open_faq === false){
                "#0c90fc";
            }else{
                "#ffffff";
            }
        }
        radius: 30

        Text {
            id: text1
            x: 90
            y: 18
            width: 66
            height: 24
            //color: "#ffffff"
            color: {
                if(back_button.flag_open_faq === false){
                    "#ffffff";
                }else{
                    "#000000";
                }
            }
            text: qsTr("Назад")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Montserrat"
        }

        Image {
            id: buttonbackwhite
            x: 34
            y: 18
            //source: "surs/elements/button-back-white.svg"
            source: {
                if(back_button.flag_open_faq === false){
                    "surs/elements/button-back-white.svg";
                }else{
                    "surs/elements/button-back-black.svg";
                }
            }
            fillMode: Image.PreserveAspectFit
        }
    }

    MouseArea {
        id: mouseArea
        x: 0
        y: 0
        width: 193
        height: 60
        onClicked:
            back_button.goStart();
    }
}
