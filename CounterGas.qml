import QtQuick 2.0

Item {
    width: 712
    height: 183
    Rectangle {
        id: rectangle9
        x: 0
        y: 0
        width: 712
        height: 183
        color: "#000000"

        Text {

            id: element4
            x: 0
            y: 0
            width: 712
            height: 183
            color: "#0c90fc"
            text: qsTr("00000.00")
            font.family: "DS-Digital"
            font.pixelSize: 184
            horizontalAlignment: Text.AlignHCenter
            property int counter: 9999970
            property string str: ""
            property string str2: ""
            Timer{
                interval: 200; running: true; repeat: true
                onTriggered: {
                    element4.counter =(element4.counter + 1) % 10000000;
                    element4.str = element4.counter.toString();
                    for(var i = 7; i > 0; --i){
                        if(i === 2){
                            element4.str2 += ".";
                        }
                        if(i > element4.str.length){
                            element4.str2 += "0";
                        }else if(i <= element4.str.length){
                            element4.str2 = element4.str2 + element4.str[element4.str.length - i];
                        }
                    }
                    element4.text = qsTr(element4.str2);
                    element4.str2 = "";
                }
            }
        }
    }
}
