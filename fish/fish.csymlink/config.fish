# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Node
status --is-interactive; and source (nodenv init -|psub)

# Ruby
status --is-interactive; and source (rbenv init -|psub)

# Use NeoVim as my text editor
set EDITOR '/usr/local/bin/nvim'
set VISUAL '/usr/local/bin/nvim'

# Dotfiles
set -x PATH $PATH "$HOME/.dotfiles/bin"
