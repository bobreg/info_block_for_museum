import QtQuick 2.0

Item {
    id: buttonEn
    signal changeEn(bool flag)
    property bool flag_en: false
    property bool flag_open_faq: false
    property alias open_faq: buttonEn.flag_open_faq
    width: 95
    height: 95


    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 95
        height: 95
        //color: "#0c90fc"
        color:{
            if(flag_open_faq === true){
                "#ffffff";
            }else{
                "#0c90fc";
            }
        }

        radius: 47
    }


    Text {
        id: text1
        x: 0
        y: 0
        width: 95
        height: 95
        //color: "#ffffff"
        color:{
            if(flag_open_faq === true){
                "#000000";
            }else{
                "#ffffff";
            }
        }
        text: qsTr("EN")
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Montserrat SemiBold"

        MouseArea {
            id: mouseArea3
            property bool flagEn: false
            anchors.fill: parent
            x: 0
            y: 0
            width: 95
            height: 95
            onClicked: {
                if(text1.text === qsTr("EN")){
                    flagEn = true;
                    buttonEn.changeEn(flagEn);
                    text1.text = qsTr("RU");
                }else{
                    flagEn = false;
                    buttonEn.changeEn(flagEn);
                    text1.text = qsTr("EN");
                }
            }
        }
    }
}
