# auto-switch-defaultbrowser
A guide to auto switch defaultbrowser with crontab on MacOS. Started with my needs and this is actually just a note. Feel free to follow through.

# Prerequisite

    brew install defaultbrowser



# Installing

## Cloning & Setup

Clone the repository. This will setup a folder at ~/.scripts/; feel free to change but please do update the shell script by yourself.

    mkdir ~/.scripts && cd ~/.scripts
    git clone git@github.com:sunderipranata/auto-switch-defaultbrowser.git
    cd auto-switch-defaultbrowser
    osacompile -o ~/.scripts/confirm-system-dialog.app ./confirm-system-dialog.applescript
    chmod +x auto-switch-defaultbrowser
    cd

Then add the following path to your `.profile` or `.bashrc` or `.zshrc` and source it.

    export PATH=$PATH:$HOME/.scripts/auto-switch-defaultbrowser

then you should reload the terminal, or run this (depending or where you put the path)
    source .zshrc

## Try it yourself
Try changing the default browser manually (without confirmation pop up from the OS)

    auto-switch-defaultbrowser firefox
    auto-switch-defaultbrowser chrome
    
Note: The supported browser will refer to https://github.com/kerma/defaultbrowser

<br>

# Automation
copy your PATH contents:

    echo $PATH

create crontab:

    EDITOR=nano crontab -e

and insert

    PATH=[copy the path]
    0 8 * * 1-5 auto-switch-defaultbrowser firefox >> /tmp/cron.out 2>&1
    0 18 * * 1-5 auto-switch-defaultbrowser chrome >> /tmp/cron.out 2>&1

Feel free to change the cron to your needs. https://crontab.guru/ will surely help you! :)

## Peek logs:

    tail ~/.scripts/logs/auto-switch-defaultbrowser.log
    tail /tmp/cron.out

