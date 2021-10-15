
mkdir -p ~/.scripts/logs      
touch ~/.scripts/logs/auto-switch-defaultbrowser.log


echo $(date) >> ./logs/auto-switch-defaultbrowser.log
defaultbrowser "$1"
osascript ~/.scripts/confirm-system-dialog.app >> ~/.scripts/logs/auto-switch-defaultbrowser.log
