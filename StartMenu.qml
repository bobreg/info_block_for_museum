import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    id: stamenu
    width: 1080
    height: 1920
    signal signalOpenGas
    signal signalOpenHistory
    signal signalOpenFaq
    property bool flagEn: false
    property alias flagEnChange: stamenu.flagEn
    
    Rectangle {
        id: rectangle
        x: 0
        y: 1760
        width: 419
        height: 160
        color: "#0c90fc"
        enabled: false
    }
    
    Rectangle {
        id: rectangle1
        x: 0
        y: 252
        width: 79
        height: 854
        color: "#0c90fc"
        enabled: false
    }
    
    Rectangle {
        id: rectangle2
        x: 190
        y: 312
        width: 700
        height: 154
        color: "#ffffff"
        radius: 20
        enabled: false
        border.color: "#0c90fc"
        border.width: 6
    }



    Image {
        id: picture12x
        x: 190
        y: 522
        //source: "picture-1@2x.png"
        source: "file:///C:/Users/Public/photos/picture-1@2x.png"
        fillMode: Image.PreserveAspectFit

        Image {
            id: buttonplay
            x: 260
            y: 90
            source: "surs/elements/button-play.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: mouseArea
            x: 0
            y: 0
            width: 700
            height: 360
            onClicked: {
                stamenu.signalOpenGas();
            }
        }
    }

    Image {
        id: line1
        x: 890
        y: 387
        source: "surs/elements/line-1.svg"
        fillMode: Image.PreserveAspectFit

    }

    Image {
        id: _1
        x: 963
        y: 808
        source: "surs/elements/1.svg"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text1
        x: 230
        y: 784
        width: 247
        height: 68
        color: "#ffffff"
        //text: qsTr("Газоснабжение в Москве")
        font.pixelSize: 28
        wrapMode: Text.WordWrap
        font.weight: Font.Bold
        font.family: "Montserrat"
        minimumPixelSize: 9
        text: {
            if(stamenu.flagEn === true){
                qsTr("Gas supply in Moscow");
            }else{
                qsTr("Газоснабжение в Москве");
            }
        }
    }

    Image {
        id: picture22x
        x: 190
        y: 926
        source: "file:///C:/Users/Public/photos/picture-2@2x.png"
        fillMode: Image.PreserveAspectFit

        Image {
            id: slider
            x: 300
            y: 0
            source: "surs/elements/slider.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: mouseArea1
            x: 0
            y: 0
            width: 700
            height: 360
            onClicked: {
                stmenu.signalOpenHistory();
            }
        }
    }

    Image {
        id: picture32x
        x: 190
        y: 1330
        source: "file:///C:/Users/Public/photos/picture-3@2x.png"
        fillMode: Image.PreserveAspectFit

        MouseArea {
            id: mouseArea2
            x: 0
            y: 0
            width: 700
            height: 360
            onClicked: {
                stmenu.signalOpenFaq();
            }
        }
    }


    Image {
        id: line2
        x: 982
        y: 922
        source: "surs/elements/line-2.svg"
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: _2
        x: 957
        y: 1210
        source: "surs/elements/2.svg"
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: line3
        x: 890
        y: 1326
        source: "surs/elements/line-3.svg"
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: line4
        x: 92
        y: 1439
        source: "surs/elements/line-4.svg"
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: _3
        x: 67
        y: 1330
        source: "surs/elements/3.svg"
        fillMode: Image.PreserveAspectFit
    }


    Text {
        id: text2
        x: 230
        y: 1207
        width: 301
        height: 49
        color: "#ffffff"
        //text: qsTr("Было — стало")
        font.pixelSize: 40
        font.weight: Font.Bold
        font.family: "Montserrat"
        minimumPixelSize: 12
        text: {
            if(stamenu.flagEn === true){
                qsTr("It was - it is");
            }else{
                qsTr("Было — стало");
            }
        }
    }


    Text {
        id: text3
        x: 230
        y: 1562
        width: 393
        height: 98
        color: "#ffffff"
        //text: qsTr("Популярные вопросы (FAQ)")
        font.pixelSize: 40
        wrapMode: Text.WordWrap
        font.weight: Font.Bold
        font.family: "Montserrat"
        text: {
            if(stamenu.flagEn === true){
                qsTr("Frequently asked questions (FAQ)");
            }else{
                qsTr("Популярные вопросы (FAQ)");
            }
        }
    }



    Button {
        id: button
        x: 820
        y: 152
        text: qsTr("выход")
        autoExclusive: false
        onClicked:
            close()
    }


    Text {
        id: element
        x: 236
        y: 354
        width: 608
        height: 71
        color: "#292929"
        enabled: false
        font.family: "Montserrat SemiBold"
        font.weight: Font.Normal
        font.pixelSize: 28
        textFormat: Text.AutoText
        fontSizeMode: Text.FixedSize
        wrapMode: Text.WordWrap
        elide: Text.ElideNone
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignLeft
        text: {
            if(stamenu.flagEn === true){
                qsTr("To find out more about gas supply, click on one of the buttons")
            }else{
                qsTr("Чтобы узнать больше о газоснабжении, нажмите на одну из кнопок")
            }
        }

    }

}
/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
