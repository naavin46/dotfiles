export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

PROMPT_COMMAND='__posh_git_ps1 "\u@\h :\w" "\\\$ "; '$PROMPT_COMMAND

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="$HOME/.pyenv/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"

export ANDROID_HOME="/Users/$USER/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/build-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_SDK_ROOT=/Users/$USER/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$PATH

export PATH=`pwd`/flutter/bin:$PATH
export PATH="/usr/local/opt/binutils/bin:$PATH"

export LC_ALL=en_GB.UTF-8
export BASH_SILENCE_DEPRECATION_WARNING=1

#export CFLAGS="-I$(brew --prefix openssl)/include"
#export LDFLAGS="-L$(brew --prefix openssl)/lib"

#git log --author='<naavin_email>@gmail.com'
#git log --author='Naavin Mahendran'

#sudo chown -R $(whoami) $(brew --prefix)/*
#adb logcat *:E
#adb install android/app/build/outputs/apk/release/app-release.apk
#keytool -genkey -v -keystore android-key.keystore -alias android -keyalg RSA -keysize 2048 -validity 10000
#keytool -exportcert -list -v -alias android -keystore android-key.keystore
#keytool -importkeystore -srckeystore android-key.keystore -destkeystore android-key.keystore -deststoretype pkcs12
#ngrok http 3000 -region ap
#ngrok http 8080 -host-header="localhost:8080" -region ap
#mongodump --host="localhost:27017" -o dump
#mongorestore dump/
#watchman watch-del-all && rm -rf $TMPDIR/react-native-packager-cache-* && rm $TMPDIR/metro-bundler-cache-*
#react-native init MyApp --version 0.61.0
#react-native run-ios --simulator="iPhone 11 Pro Max"
#xcrun simctl list
#sudo launchctl stop com.apple.usbd && sudo launchctl start com.apple.usbd

alias android-emulator='emulator -avd Nexus_6P_API_27'
alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gp='git pull'
alias gp-all='for d in */; { echo "$d"; cd $d; git pull; cd ..; }'
alias gsgb='grunt sass && grunt build'
alias sourcetree='open -a SourceTree'
alias ip="printf 'ip ' && curl whatismyip.akamai.com && ifconfig en0 inet | grep 'inet '"
alias python-server="python -m SimpleHTTPServer 8000"
alias cwp="cd ~/Codes/"
alias rn-clear="watchman watch-del-all && rm -rfv $TMPDIR/react-* && rm -rfv $TMPDIR/react-native-packager-cache-* && rm -rfv $TMPDIR/metro-bundler-cache-*"
alias sd='printf "\e]1337;SetProfile=Dark\007"'
alias sl='printf "\e]1337;SetProfile=Default\007"'
alias flushdns="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"