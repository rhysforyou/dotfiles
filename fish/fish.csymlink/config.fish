# Node
status --is-interactive; and source (nodenv init -|psub)

# Ruby
status --is-interactive; and source (rbenv init -|psub)

# Use NeoVim as my text edito
set EDITOR '/usr/local/bin/nvim'
set VISUAL '/usr/local/bin/nvim'

# Rust
set -x PATH $PATH "$HOME/.cargo/bin"

# Android
set JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home"
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/tools
set -x PATH $PATH $ANDROID_HOME/tools/bin
set -x PATH $PATH $ANDROID_HOME/platform-tools

# Flutter
set -x PATH $PATH "$HOME/Library/flutter/bin"
