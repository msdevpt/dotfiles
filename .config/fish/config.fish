if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting ""

starship init fish | source
zoxide init fish | source

set -x XDG_RUNTIME_DIR /run/user/(id -u)

set -x DOTNET_ROOT /usr/share/dotnet
set -x MSBuildSDKsPath $DOTNET_ROOT/sdk/(dotnet --version)/Sdks
set PATH $PATH $DOTNET_ROOT

alias ls='eza -lh --group-directories-first --icons=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias code='code --ozone-platform=wayland'

function ff
    fzf --preview 'bat --style=numbers --color=always {}'
end

function zd
    if test (count $argv) -eq 0
        cd ~
    else if test -d $argv[1]
        cd $argv[1]
    else
        z $argv && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
    end
end

function ..
    cd ..
end

function ...
    cd ../..
end

function ....
    cd ../../..
end

function open
    xdg-open $argv >/dev/null 2>&1 &
end

alias d='docker'
alias r='rails'

function n
    if test (count $argv) -eq 0
        nvim .
    else
        nvim $argv
    end
end

alias g='git'
function gcm
    git commit -m $argv
end
function gcam
    git commit -a -m $argv
end
function gcad
    git commit -a --amend $argv
end

function zeditor
    env WAYLAND_DISPLAY='' zeditor $argv
end

export PATH="$HOME/.local/bin:$PATH"

# --- secrets (kept OUT of this repo) ---
# Set these in ~/.config/fish/config.fish.local or via a keyring tool:
#   export OPENROUTER_API_KEY="..."
#   export ANTHROPIC_BASE_URL="https://openrouter.ai/api"
#   export ANTHROPIC_AUTH_TOKEN="$OPENROUTER_API_KEY"
#   export ANTHROPIC_API_KEY=""
# Then `source` it from here, e.g.:
#   [ -f $HOME/.config/fish/config.fish.local ] && source $HOME/.config/fish/config.fish.local

# Added by LM Studio CLI tool (lms)
set -gx PATH $PATH $HOME/.lmstudio/bin

# opencode
fish_add_path $HOME/.opencode/bin

set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by Antigravity CLI tool
set -gx PATH "$HOME/.local/bin" $PATH

# mimocode
fish_add_path $HOME/.mimocode/bin
