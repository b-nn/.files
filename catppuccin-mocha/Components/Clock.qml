import QtQuick 2.15

Column {
  id: container

  property date dateTime: new Date()
  property color color: config.text
  property alias timeFont: time.font
  property alias dateFont: date.font

  spacing: -20

  Timer {
      interval: 100; running: true; repeat: true;
      onTriggered: container.dateTime = new Date()
  }

  Text {
      id: time
      anchors.right: parent.right

      color: container.color

      text : Qt.formatTime(container.dateTime, "hh:mm")

      font.pointSize: 72

      anchors.margins: 0
      lineHeight: 0.7
  }

  Text {
      id: date
      anchors.right: parent.right

      color: container.color

      text : Qt.formatDate(container.dateTime, Qt.DefaultLocaleLongDate)

      font.pointSize: 24
      anchors.margins: 0
      lineHeight: 0.7
  }
}
