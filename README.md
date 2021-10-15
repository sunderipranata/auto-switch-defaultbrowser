# auto-switch-defaultbrowser
auto switcher defaultbrowser for macos


brew install defaultbrowser



How to set the automation?


clone the repository: (.scripts/ (or anywhere you like, i will be using this directory)

mkdir .scripts
cd .scripts
git clone git@github.com:sunderipranata/auto-switch-defaultbrowser.git


try it yourself: 
sh ~/.scripts/auto-switch-defaultbrowser/auto-switch-defaultbrowser.sh firefox
sh ~/.scripts/auto-switch-defaultbrowser/auto-switch-defaultbrowser.sh chrome

Optional
create crontab:

EDITOR=nano crontab -e

and insert

0 8 * * 1-5 sh ~/.scripts/auto-switch-defaultbrowser.sh firefox 
0 18 * * 1-5 sh ~/.scripts/auto-switch-defaultbrowser.sh chrome



to peek logs:
tail ~/.scripts/logs/auto-switch-defaultbrowser.log



