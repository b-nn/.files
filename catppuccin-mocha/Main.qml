import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import "Components"

Item {
  id: root
  height: Screen.height
  width: Screen.width
  Rectangle {
    id: background
    anchors.fill: parent
    height: parent.height
    width: parent.width
    z: 0
    color: config.base
  }
  Image {
    id: backgroundImage
    anchors.fill: parent
    height: parent.height
    width: parent.width
    fillMode: Image.PreserveAspectCrop
    z: 1
    source: "/usr/share/sddm/themes/catppuccin-mocha/backgrounds/randomlySelectedWallpaper.png"
    asynchronous: false
    cache: true
    mipmap: true
    clip: true
    smooth: false
  }
  Item {
    id: mainPanel
    z: 3
    anchors {
      fill: parent
      margins: 50
    }
    Rectangle {
      anchors {
        top: parent.top
        right: parent.right
      }

      border.width: 2
      radius: 10
      border.color: config.lavender
      color: config.crust

      width: childrenRect.width + 30
      height: childrenRect.height + 10

      ColumnLayout {
        anchors {
          centerIn: parent
        }
        spacing: 10
        Clock {
          timeFont.family: config.Font
          dateFont.family: config.Font
          property int size: config.UiFontSize
          dateFont.pointSize: size
          timeFont.pointSize: size*3
          id: time
          visible: config.ClockEnabled == "true" ? true : false
          Layout.alignment: Qt.AlignRight
        }
        Words {
          text: "Life before death, \nStrength before weakness, \nJourney before destination"
          Layout.alignment: Qt.AlignRight
        }
        Words {
          text: "I will protect those who cannot protect themselves"
          Layout.alignment: Qt.AlignRight
          Layout.preferredWidth: parent.width
        }
        Words {
          text: "I will protect even those I hate, so long as it is right"
          Layout.alignment: Qt.AlignRight
          Layout.preferredWidth: parent.width
        }
        Words {
          text: "I will take responsibility for what I have done. If I must fall, I will rise each time a better man."
          Layout.alignment: Qt.AlignRight
          Layout.preferredWidth: parent.width
        }
      }
    }
    LoginPanel {
      id: loginPanel
      anchors.fill: parent
    }
  }
}
