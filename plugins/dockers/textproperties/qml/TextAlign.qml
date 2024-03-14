/*
 *  SPDX-FileCopyrightText: 2024 Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
 *
 *  SPDX-License-Identifier: GPL-2.0-or-later
 */
import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.12
import org.krita.flake.text 1.0

CollapsibleGroupProperty {
    propertyName: "Text Align";

    property int textAlignAll: 1;
    onTextAlignAllChanged: textAlignAllCmb.currentIndex = textAlignAllCmb.indexOfValue(textAlignAll);
    property int textAlignLast: 0;
    onTextAlignLastChanged: textAlignLastCmb.currentIndex = textAlignLastCmb.indexOfValue(textAlignLast);
    property int textAnchor: 0;
    onTextAnchorChanged: textAnchorCmb.currentIndex = textAnchorCmb.indexOfValue(textAnchor);

    contentItem: GridLayout {
        columns: 3
        anchors.left: parent.left
        anchors.right: parent.right
        columnSpacing: columnSpacing;

        ToolButton {
            width: firstColumnWidth;
            height: firstColumnWidth;
            display: AbstractButton.IconOnly
            icon.source: "qrc:///light_view-refresh.svg"
        }
        Label {
            text: i18nc("@label:listbox", "Text Align:")
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
        }

        ComboBox {
            id: textAlignAllCmb;
            model: [
                {text: i18nc("@label:inlistbox", "Left"), value: KoSvgText.AlignLeft},
                {text: i18nc("@label:inlistbox", "Start"), value: KoSvgText.AlignStart},
                {text: i18nc("@label:inlistbox", "Center"), value: KoSvgText.AlignCenter},
                {text: i18nc("@label:inlistbox", "End"), value: KoSvgText.AlignEnd},
                {text: i18nc("@label:inlistbox", "Right"), value: KoSvgText.AlignRight},
                {text: i18nc("@label:inlistbox", "Justified"), value: KoSvgText.AlignJustify}
            ]
            Layout.fillWidth: true
            textRole: "text";
            valueRole: "value";
            onActivated: textAlignAll = currentValue;
        }

        ToolButton {
            width: firstColumnWidth;
            height: firstColumnWidth;
            display: AbstractButton.IconOnly
            icon.source: "qrc:///light_view-refresh.svg"
        }
        Label {
            text: i18nc("@label:listbox", "Align Last:")
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
        }

        ComboBox {
            id: textAlignLastCmb;
            model: [
                {text: i18nc("@label:inlistbox", "Auto"), value: KoSvgText.AlignLastAuto},
                {text: i18nc("@label:inlistbox", "Left"), value: KoSvgText.AlignLeft},
                {text: i18nc("@label:inlistbox", "Start"), value: KoSvgText.AlignStart},
                {text: i18nc("@label:inlistbox", "Center"), value: KoSvgText.AlignCenter},
                {text: i18nc("@label:inlistbox", "End"), value: KoSvgText.AlignEnd},
                {text: i18nc("@label:inlistbox", "Right"), value: KoSvgText.AlignRight}
            ]
            Layout.fillWidth: true
            textRole: "text";
            valueRole: "value";
            onActivated: textAlignLast = currentValue;
        }


        ToolButton {
            width: firstColumnWidth;
            height: firstColumnWidth;
            display: AbstractButton.IconOnly
            icon.source: "qrc:///light_view-refresh.svg"
        }
        Label {
            text: i18nc("@label:listbox", "Text Anchor:")
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
        }

        ComboBox {
            id: textAnchorCmb;
            model: [
                {text: i18nc("@label:inlistbox", "Start"), value: KoSvgText.AnchorStart},
                {text: i18nc("@label:inlistbox", "Middle"), value: KoSvgText.AnchorMiddle},
                {text: i18nc("@label:inlistbox", "End"), value: KoSvgText.AnchorEnd}]
            Layout.fillWidth: true
            textRole: "text";
            valueRole: "value";
            onActivated: textAnchor = currentValue;
        }

    }
}

