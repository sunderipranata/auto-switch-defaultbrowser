# auto-switch-defaultbrowser
A guide to auto switch defaultbrowser with cron. Started with my needs and this is actually just a note. Feel free to follow through.

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

Then add the following path to your `.profile` or `.bashrc` or `.zshrc`

    PATH=$PATH:$HOME/.scripts/auto-switch-defaultbrowser    

## Try it yourself
Try changing the default browser manually (without confirmation pop up from the OS)

    auto-switch-defaultbrowser firefox
    auto-switch-defaultbrowser chrome
    
Note: The supported browser will refer to https://github.com/kerma/defaultbrowser

<br>

# Automation
create crontab:

    EDITOR=nano crontab -e

and insert

    0 8 * * 1-5 sh auto-switch-defaultbrowser firefox 
    0 18 * * 1-5 sh auto-switch-defaultbrowser chrome

Feel free to change the cron to your needs. https://crontab.guru/ will surely help you! :)


## Peek logs:
tail ~/.scripts/logs/auto-switch-defaultbrowser.log
