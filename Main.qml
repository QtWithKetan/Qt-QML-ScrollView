import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ScrollView
    {
        anchors.fill: parent

        //ScrollBar.horizontal.policy : ScrollBar.AlwaysOn
        //ScrollBar.vertical.policy : ScrollBar.AlwaysOn

        ColumnLayout
        {
            spacing: 20
            width: parent.width

            Repeater
            {
                model: 50
                Rectangle
                {
                    width: 300
                    height: 50
                    color: index % 2 == 0 ? "#FF00FF" : "#00FF00"

                    Text {
                        id: myText
                        anchors.centerIn: parent
                        text: "Rectangle : " + (index + 1)
                        font.pointSize: 20
                    }
                }
            }
        }
    }
}
