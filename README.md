# auto-switch-defaultbrowser
auto switcher defaultbrowser for macos



# Prerequisite

    brew install defaultbrowser



# Installing

## Cloning & Setup

Clone the repository. This will setup a folder at ~/.scripts/; feel free to change but please do update the shell script by yourself.

    mkdir ~/.scripts && cd ~/.scripts
    git clone git@github.com:sunderipranata/auto-switch-defaultbrowser.git
    cd auto-switch-defaultbrowser
    osacompile -o ~/.scripts/confirm-system-dialog.app ./confirm-system-dialog.applescript
    cd

## Try it yourself
Try changing the default browser manually (without confirmation pop up from the OS)

    sh ~/.scripts/auto-switch-defaultbrowser/auto-switch-defaultbrowser.sh firefox
    sh ~/.scripts/auto-switch-defaultbrowser/auto-switch-defaultbrowser.sh chrome
    
Note: The supported browser will refer to https://github.com/kerma/defaultbrowser

<br>

# Automation
create crontab:

    EDITOR=nano crontab -e

and insert

    0 8 * * 1-5 sh ~/.scripts/auto-switch-defaultbrowser/auto-switch-defaultbrowser.sh firefox 
    0 18 * * 1-5 sh ~/.scripts/auto-switch-defaultbrowser/auto-switch-defaultbrowser.sh chrome

## Peek logs:
tail ~/.scripts/logs/auto-switch-defaultbrowser.log
