import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3


/* warning popup to notify at the user that default data was already imported */
Dialog {
    id: importAlreadyDoneDialog
    title: i18n.tr("Attention")

    Label{
        anchors.horizontalCenter: importAlreadyDoneDialog.horizontalCenter
        text: i18n.tr("Data already loaded, can't redo it")
        color: UbuntuColors.red
    }

    Button {
        anchors.horizontalCenter: importAlreadyDoneDialog.horizontalCenter
        text: i18n.tr("Close")
        onClicked:
            PopupUtils.close(importAlreadyDoneDialog)
    }

}
