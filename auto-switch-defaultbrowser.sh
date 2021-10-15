echo $(date) >> ./logs/auto-switch-defaultbrowser.log
defaultbrowser "$1"
osascript ./confirm-system-dialog.app >> ~/.scripts/logs/auto-switch-defaultbrowser.log
