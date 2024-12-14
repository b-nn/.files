import QtQuick 2.15
import SddmComponents 2.0

Text {
  id: words
  color: config.text
  text: "test!"
  font.family: config.Font
  font.pointSize: config.UiFontSize * 0.7
  lineHeight: 0.7
  z: 4
  wrapMode: Text.WordWrap
}
