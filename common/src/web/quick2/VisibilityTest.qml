/****************************************************************************
**
** Copyright © 1992-2014 Cisco and/or its affiliates. All rights reserved.
** All rights reserved.
** 
** $CISCO_BEGIN_LICENSE:APACHE$
**
** Licensed under the Apache License, Version 2.0 (the "License");
** you may not use this file except in compliance with the License.
** You may obtain a copy of the License at
** http://www.apache.org/licenses/LICENSE-2.0
** Unless required by applicable law or agreed to in writing, software
** distributed under the License is distributed on an "AS IS" BASIS,
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
** See the License for the specific language governing permissions and
** limitations under the License.
**
** $CISCO_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0

Rectangle {
    property string title
    width: 320
    height: 400

    Column {
        anchors.left: parent.left
        anchors.leftMargin: 10

        anchors.top: parent.top
        anchors.topMargin: 10

        anchors.right: parent.right
        anchors.rightMargin: 10

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10

        spacing: 20

        Row {
            spacing: 10

            Text {
                objectName: "notDisplayedLabel"
                text: "No Visible Label"
                color: "darkgrey"
                visible: false
            }

            Text {
                objectName: "displayedLabel"
                text: "Visible Label"
                color: "darkgrey"
            }

            Text {
                objectName: "zeroLabel"
                color: "darkgrey"
                width: 0
                height: 0
            }
        }

        Row {
            spacing: 10

            PushButton {
                objectName: "buttonCanHide"
                text: "Click to Hide"
                onButtonClick: visible = false
            }

            PushButton {
                objectName: "buttonHidden"
                text: "hidden"
                visible: false
            }
        }

        TextInput {
            objectName: "inputHidden"
            width: parent.width
            visible: false
        }

        Rectangle {
            objectName: "hiddenScrollArea"
            width: parent.width
            height: 100
            border.color: "black"
            visible: false

            PushButton {
                objectName: "buttonInScrollArea"
                text: "Click here"
            }
        }
    }
}

