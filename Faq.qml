import QtQuick 2.0

Item {
    id: faq
    width: 1080
    height: 1920
    property bool flag_en: false
    property alias flagEn: faq.flag_en

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1080
        height: 1920
        color: "#0c90fc"

        Rectangle {
            id: rectangle1
            x: 60
            //y: 313
            y:{
                if(state_down === false){
                    313;
                }else if(state_down === true && state_open_question === true){
                    597;
                }else if(state_down === true && state_open_question === false){
                    840;
                }
            }

            width: 960
            height: {
                if(state_open_question === false){
                    900;
                }else{
                    1143
                }
            }

            color: "#ffffff"
            radius: 20
            border.width: 0
            property bool state_down: false
            property bool state_open_question: false

            Text {
                id: question1
                x: 70
                y: 60
                width: 590
                height: 98
                visible: true
                text: qsTr("Lorem ipsum dolor sit amet, consectetuer adipiscing?")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.WordWrap
                font.weight: Font.Bold
                font.family: "Montserrat"
            }

            Text {
                id: answer1
                x: question1.x
                y: question1.y + question1.height + 40
                width: 387
                height: 180
                visible: {
                    if(buttonplus.state_open === true){
                        true;
                    }else{
                        false;
                    }
                }

                text: qsTr("Утечку можно определить тремя способами: на слух (газ выходит из трубы со свистом), на глаз (если смочить газовые трубы мыльной водой, на месте утечки появятся пузырьки) и по запаху (чистый природный газ запахом не обладает, поэтому в него добавляют специальную отдушку).")
                font.pixelSize: 16
                wrapMode: Text.WordWrap
                font.family: "Montserrat SemiBold"
            }

            Text {
                id: answer1_1
                x: answer1.x + answer1.width + 50
                y: answer1.y
                width: 406
                height: 203
                visible: {
                    if(buttonplus.state_open === true){
                        true;
                    }else{
                        false;
                    }
                }
                text: qsTr("При подозрении, что произошла утечка, необходимо перекрыть вентиль на газовой трубе, проветрить помещение, не использовать электроприборы и не включать/выключать освещение, вызвать аварийную газовую службу по номеру 04, 104 или 112, используя мобильный телефон — лучше сделать это из другого помещения или с улицы.")
                font.pixelSize: 16
                wrapMode: Text.WordWrap
                font.family: "Montserrat SemiBold"
            }

            Text {
                id: question2
                x: 70
                //y: 228
                y:{
                    if(shift === false){
                        228;
                    }else{
                        228+243;
                    }
                }

                width: 700
                height: 98
                text: qsTr("Lorem ipsum dolor sit amet, cons ctetuer adipiscing eli?")
                font.pixelSize: 40
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.WordWrap
                font.weight: Font.Bold
                font.family: "Montserrat"
                property bool shift: false
            }

            Text {
                id: answer2
                x: question2.x
                y: question2.y + question2.height + 40
                width: 387
                height: 180
                visible: {
                    if(buttonplus1.state_open === true){
                        true;
                    }else{
                        false;
                    }
                }
                text: qsTr("Утечку можно определить тремя способами: на слух (газ выходит из трубы со свистом), на глаз (если смочить газовые трубы мыльной водой, на месте утечки появятся пузырьки) и по запаху (чистый природный газ запахом не обладает, поэтому в него добавляют специальную отдушку).")
                font.pixelSize: 16
                wrapMode: Text.WordWrap
                font.family: "Montserrat SemiBold"
            }

            Text {
                id: question3
                x: 70
                //y: 396
                y:{
                    if(shift === false){
                        396;
                    }else{
                        396+243;
                    }
                }
                width: 591
                height: 98
                text: qsTr("Lorem ipsum dolor sit amet, cons ctetuer adipiscing eli?")
                font.pixelSize: 40
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.WordWrap
                font.weight: Font.Bold
                font.family: "Montserrat"
                property bool shift: false
            }

            Text {
                id: answer3
                x: question3.x
                y: question3.y + question3.height + 40
                width: 387
                height: 180
                visible: {
                    if(buttonplus2.state_open === true){
                        true;
                    }else{
                        false;
                    }
                }
                text: qsTr("Утечку можно определить тремя способами: на слух (газ выходит из трубы со свистом), на глаз (если смочить газовые трубы мыльной водой, на месте утечки появятся пузырьки) и по запаху (чистый природный газ запахом не обладает, поэтому в него добавляют специальную отдушку).")
                font.pixelSize: 16
                wrapMode: Text.WordWrap
                font.family: "Montserrat SemiBold"
            }

            Text {
                id: answer3_1
                x: answer3.x + answer3.width + 50
                y: answer3.y
                width: 406
                height: 203
                visible: {
                    if(buttonplus2.state_open === true){
                        true;
                    }else{
                        false;
                    }
                }
                text: qsTr("При подозрении, что произошла утечка, необходимо перекрыть вентиль на газовой трубе, проветрить помещение, не использовать электроприборы и не включать/выключать освещение, вызвать аварийную газовую службу по номеру 04, 104 или 112, используя мобильный телефон — лучше сделать это из другого помещения или с улицы.")
                font.pixelSize: 16
                wrapMode: Text.WordWrap
                font.family: "Montserrat SemiBold"
            }

            Text {
                id: question4
                x: 70
                //y: 564
                y:{
                    if(shift === false){
                        564;
                    }else{
                        564+243;
                    }
                }
                width: 700
                height: 98
                text: qsTr("Lorem ipsum dolor sit amet, cons ctetuer adipiscing eli?")
                font.pixelSize: 40
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.WordWrap
                font.weight: Font.Bold
                font.family: "Montserrat"
                property bool shift: false
            }

            Text {
                id: answer4
                x: question4.x
                y: question4.y + question4.height + 40
                width: 387
                height: 180
                visible: {
                    if(buttonplus3.state_open === true){
                        true;
                    }else{
                        false;
                    }
                }
                text: qsTr("Утечку можно определить тремя способами: на слух (газ выходит из трубы со свистом), на глаз (если смочить газовые трубы мыльной водой, на месте утечки появятся пузырьки) и по запаху (чистый природный газ запахом не обладает, поэтому в него добавляют специальную отдушку).")
                font.pixelSize: 16
                wrapMode: Text.WordWrap
                font.family: "Montserrat SemiBold"
            }

            Text {
                id: question5
                x: 70
                //y: 732
                y:{
                    if(shift === false){
                        732;
                    }else{
                        732+243;
                    }
                }
                width: 470
                height: 98
                text: qsTr("Lorem ipsum dolor sit amet, conseli?")
                font.pixelSize: 40
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.WordWrap
                font.weight: Font.Bold
                font.family: "Montserrat"
                property bool shift: false
            }

            Text {
                id: answer5
                x: question5.x
                y: question5.y + question5.height + 40
                width: 387
                height: 180
                visible: {
                    if(buttonplus4.state_open === true){
                        true;
                    }else{
                        false;
                    }
                }
                text: qsTr("Утечку можно определить тремя способами: на слух (газ выходит из трубы со свистом), на глаз (если смочить газовые трубы мыльной водой, на месте утечки появятся пузырьки) и по запаху (чистый природный газ запахом не обладает, поэтому в него добавляют специальную отдушку).")
                font.pixelSize: 16
                wrapMode: Text.WordWrap
                font.family: "Montserrat SemiBold"
            }

            Text {
                id: answer5_1
                x: answer5.x + answer5.width + 50
                y: answer5.y
                width: 406
                height: 203
                visible: {
                    if(buttonplus4.state_open === true){
                        true;
                    }else{
                        false;
                    }
                }
                text: qsTr("При подозрении, что произошла утечка, необходимо перекрыть вентиль на газовой трубе, проветрить помещение, не использовать электроприборы и не включать/выключать освещение, вызвать аварийную газовую службу по номеру 04, 104 или 112, используя мобильный телефон — лучше сделать это из другого помещения или с улицы.")
                font.pixelSize: 16
                wrapMode: Text.WordWrap
                font.family: "Montserrat SemiBold"
            }

            Image {
                id: buttonplus
                x: question1.x + question1.width + 40
                y: question1.y
                source: "surs/elements/button-plus.svg"
                fillMode: Image.PreserveAspectFit
                property bool state_open: false
                rotation: {
                    if(state_open === false){
                        0;
                    }else{
                        45;
                    }
                }
            }

            Image {
                id: buttonplus1
                x: question2.x + question2.width + 40
                y: question2.y
                source: "surs/elements/button-plus.svg"
                fillMode: Image.PreserveAspectFit
                property bool state_open: false
                rotation: {
                    if(state_open === false){
                        0;
                    }else{
                        45;
                    }
                }
            }

            Image {
                id: buttonplus2
                x: question3.x + question3.width + 40
                y: question3.y
                source: "surs/elements/button-plus.svg"
                fillMode: Image.PreserveAspectFit
                property bool state_open: false
                rotation: {
                    if(state_open === false){
                        0;
                    }else{
                        45;
                    }
                }
            }

            Image {
                id: buttonplus3
                x: question4.x + question4.width + 40
                y: question4.y
                source: "surs/elements/button-plus.svg"
                fillMode: Image.PreserveAspectFit
                property bool state_open: false
                rotation: {
                    if(state_open === false){
                        0;
                    }else{
                        45;
                    }
                }
            }

            Image {
                id: buttonplus4
                x: question5.x + question5.width + 40
                y: question5.y
                source: "surs/elements/button-plus.svg"
                fillMode: Image.PreserveAspectFit
                property bool state_open: false
                rotation: {
                    if(state_open === false){
                        0;
                    }else{
                        45;
                    }
                }
            }

            MouseArea {
                id: mouseArea
                anchors.centerIn: buttonplus
                width: 100
                height: 100
                onClicked: {

                    if(rectangle1.state_down === true){
                        rectangle1.y = 597;
                    }

                    if(rectangle1.state_open_question === false &&
                            buttonplus.state_open === false){
                        question2.shift = true;
                        question3.shift = true;
                        question4.shift = true;
                        question5.shift = true;
                        rectangle1.state_open_question = true;
                    }else if(rectangle1.state_open_question === true &&
                             buttonplus.state_open === true){
                        rectangle1.state_open_question = false;
                        question2.shift = false;
                        question3.shift = false;
                        question4.shift = false;
                        question5.shift = false;
                    }else{
                        question2.shift = true;
                        question3.shift = true;
                        question4.shift = true;
                        question5.shift = true;
                    }

                    buttonplus.state_open = !buttonplus.state_open;
                    buttonplus1.state_open = false;
                    buttonplus2.state_open = false;
                    buttonplus3.state_open = false;
                    buttonplus4.state_open = false;
                }
            }

            MouseArea {
                id: mouseArea1
                anchors.centerIn: buttonplus1
                width: 100
                height: 100
                onClicked: {

                    if(rectangle1.state_down === true){
                        rectangle1.y = 597;
                    }

                    if(rectangle1.state_open_question === false &&
                            buttonplus1.state_open === false){
                        question2.shift = false;
                        question3.shift = true;
                        question4.shift = true;
                        question5.shift = true;
                        rectangle1.state_open_question = true;
                    }else if(rectangle1.state_open_question === true &&
                             buttonplus1.state_open === true){
                        rectangle1.state_open_question = false;
                        question2.shift = false;
                        question3.shift = false;
                        question4.shift = false;
                        question5.shift = false;
                    }else{
                        question2.shift = false;
                        question3.shift = true;
                        question4.shift = true;
                        question5.shift = true;
                    }

                    buttonplus1.state_open = !buttonplus1.state_open;
                    buttonplus.state_open = false;
                    buttonplus2.state_open = false;
                    buttonplus3.state_open = false;
                    buttonplus4.state_open = false;
                }
            }

            MouseArea {
                id: mouseArea2
                anchors.centerIn: buttonplus2
                width: 100
                height: 100
                onClicked: {

                    if(rectangle1.state_down === true){
                        rectangle1.y = 597;
                    }

                    if(rectangle1.state_open_question === false &&
                            buttonplus2.state_open === false){
                        question2.shift = false;
                        question3.shift = false;
                        question4.shift = true;
                        question5.shift = true;
                        rectangle1.state_open_question = true;
                    }else if(rectangle1.state_open_question === true &&
                             buttonplus2.state_open === true){
                        rectangle1.state_open_question = false;
                        question2.shift = false;
                        question3.shift = false;
                        question4.shift = false;
                        question5.shift = false;
                    }else{
                        question2.shift = false;
                        question3.shift = false;
                        question4.shift = true;
                        question5.shift = true;
                    }

                    buttonplus2.state_open = !buttonplus2.state_open;
                    buttonplus1.state_open = false;
                    buttonplus.state_open = false;
                    buttonplus3.state_open = false;
                    buttonplus4.state_open = false;
                }
            }

            MouseArea {
                id: mouseArea3
                anchors.centerIn: buttonplus3
                width: 100
                height: 100
                onClicked: {

                    if(rectangle1.state_down === true){
                        rectangle1.y = 597;
                    }

                    if(rectangle1.state_open_question === false &&
                            buttonplus3.state_open === false){
                        question2.shift = false;
                        question3.shift = false;
                        question4.shift = false;
                        question5.shift = true;
                        rectangle1.state_open_question = true;
                    }else if(rectangle1.state_open_question === true &&
                             buttonplus3.state_open === true){
                        rectangle1.state_open_question = false;
                        question2.shift = false;
                        question3.shift = false;
                        question4.shift = false;
                        question5.shift = false;
                    }else{
                        question2.shift = false;
                        question3.shift = false;
                        question4.shift = false;
                        question5.shift = true;
                    }

                    buttonplus3.state_open = !buttonplus3.state_open;
                    buttonplus1.state_open = false;
                    buttonplus2.state_open = false;
                    buttonplus.state_open = false;
                    buttonplus4.state_open = false;
                }
            }

            MouseArea {
                id: mouseArea4
                anchors.centerIn: buttonplus4
                width: 100
                height: 100
                onClicked: {

                    if(rectangle1.state_down === true){
                        rectangle1.y = 597;
                    }

                    question2.shift = false;
                    question3.shift = false;
                    question4.shift = false;
                    question5.shift = false;
                    if(rectangle1.state_open_question === false &&
                            buttonplus4.state_open === false){
                        rectangle1.state_open_question = true;
                    }else if(rectangle1.state_open_question === true &&
                             buttonplus4.state_open === true){
                        rectangle1.state_open_question = false;
                    }
                    buttonplus4.state_open = !buttonplus4.state_open;
                    buttonplus1.state_open = false;
                    buttonplus2.state_open = false;
                    buttonplus3.state_open = false;
                    buttonplus.state_open = false;
                }
            }
        }

        Image {
            id: buttondown
            anchors.horizontalCenter: rectangle1.horizontalCenter
            anchors.top: rectangle1.bottom
            source: {
                if(rectangle1.state_down === false){
                    "surs/elements/button-down.svg"
                }else{
                    "surs/elements/button-up.svg"
                }
            }
            fillMode: Image.PreserveAspectFit
        }

        PropertyAnimation{
            id: anime
            target: rectangle1
            easing.amplitude: 2
            properties: "y"
            //from: 313
            //to: 840
            from:{
                if(rectangle1.state_down === false){
                    313;
                }else{
                    840;
                }
            }
            to:{
                if(rectangle1.state_down === false){
                    840;
                }else{
                    313;
                }
            }

            duration: 1000
            easing.type: Easing.OutBounce
            loops: 1
            onStopped: {
                rectangle1.state_down = !rectangle1.state_down;
            }


        }

        MouseArea {
            id: mouseArea5
            anchors.centerIn: buttondown
            width: 223
            height: 70
            onClicked: {
                question2.shift = false;
                question3.shift = false;
                question4.shift = false;
                question5.shift = false;
                buttonplus.state_open = false;
                buttonplus1.state_open = false;
                buttonplus2.state_open = false;
                buttonplus3.state_open = false;
                buttonplus4.state_open = false;
                rectangle1.state_open_question = false;
                anime.running = true;
                //rectangle1.state_down = !rectangle1.state_down;
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
