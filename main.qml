import QtQuick 2.12
import QtMultimedia 5.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: window
    visible: true
    width: 1080
    height: 900
    opacity: 1
    title: qsTr("Пропан")
    //flags: Qt.FramelessWindowHint   // Отключаем обрамление окна



    Flickable {
        id: flickable
        x: 0
        y: 0
        width: 1080
        height: 900
        contentWidth: 1080
        contentHeight: 1920

        StartMenu{
            id: stmenu
            visible: true
            onSignalOpenGas: {
                //load_content.source = "VideoMy.qml";
                load_content.setSource("VideoMy.qml", {flagEn = load_content.flagen})
                stmenu.visible = false;
                backButton.visible = true;
                backButton.open_faq = false;
                en_button.open_faq = false;
            }
            onSignalOpenHistory: {
                load_content.setSource("History.qml", {flagEn = load_content.flagen})
                stmenu.visible = false;
                backButton.visible = true;
                backButton.open_faq = false;
                en_button.open_faq = false;
            }
            onSignalOpenFaq: {
                //load_content.source = "Faq.qml";
                load_content.setSource("Faq.qml", {flagEn = load_content.flagen})
                stmenu.visible = false;
                backButton.visible = true;
                backButton.open_faq = true;
                en_button.open_faq = true;
            }

        }

        Loader{
            id: load_content
            property bool flagen: false

        }

        CounterGas{
            id: counter_gas

        }

        EnButton{
            id: en_button
            x: 925
            y: 1775
            onChangeEn: {
                stmenu.flagEnChange = flag;
                backButton.enText = (flag === true) ? "Back" : "Назад";
                load_content.flagen = flag;
                if(load_content.status === Loader.Ready){
                    //console.log(load_content.item)
                    //console.log(load_content.item.flagEn)
                    load_content.item.flagEn = flag  //так можно обратится к свойству загруженного компонента
                }
            }


        }

        BackButton {
            id: backButton
            x: 60
            y: 1800
            width: 193
            height: 60
            visible: false
            onGoStart: {
                load_content.source = "";
                en_button.open_faq = false;
                //console.log(load_content.item)
                stmenu.visible = true;
                backButton.visible = false;
            }
        }
    }

}

