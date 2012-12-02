# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# include sbin in PATH
if [ -d "/sbin" ] ; then
    PATH="/sbin:$PATH"
fi
if [ -d "/usr/sbin" ] ; then
    PATH="/usr/sbin:$PATH"
fi
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# add Android SDK tools to path and set Android SDK's env variables if Android
# SDK is installed
if [ -d "$HOME/.android-sdk" ] ; then
    export ANDROID_HOME=~/.android-sdk
    export ANDROID_SDK=$ANDROID_HOME
    export PATH=$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools
fi

# enable font hinting for Java AWT applications
export _JAVA_OPTIONS=$_JAVA_OPTIONS' -Dawt.useSystemAAFontSettings=lcd'

# enable GTK style for Java Swing applications be default
export _JAVA_OPTIONS=$_JAVA_OPTIONS' -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# use system JRE in Matlab
if [ -d "/usr/lib/jvm/java-7-oracle/jre" ] ; then
    export MATLAB_JAVA=/usr/lib/jvm/java-7-oracle/jre
fi
