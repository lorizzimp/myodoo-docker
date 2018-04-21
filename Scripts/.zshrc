# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/ownerp/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gallois"
ZSH_THEME="nanotech"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

alias zshcfg="nano -B ~/.zshrc"
alias ohmyzsh="nano -B ~/.oh-my-zsh"

### keybindings ###
# vi mode
bindkey -v
# home/end (urxvt)
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
# home/end (xterm)
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
# Shift=Tab (completion)
bindkey "\e[Z" reverse-menu-complete
# insert
bindkey "\e[2~" overwrite-mode
# delete
bindkey "\e[3~" delete-char
# history search with started command
bindkey "\e[A" up-line-or-search
bindkey "\e[B" down-line-or-search
# Ctrl+R
bindkey '^R' history-incremental-search-backward


### aliases / functions ###
# default settings
alias ls='ls --color --classify'
alias ll='ls -al --color --classify'
alias l='ls --color --classify -lah'
alias grep='grep --color=auto'
alias nano='nano --nowrap -B'
alias hg='history | grep'

# ignore dangerous commands from history and make them safer
alias rm='rm -I'
alias chmod=' chmod -c'
alias chown=' chown -c'
alias shred=' shred -u -z'
alias cp='cp -i'
alias mv='mv -i'

# dev variables
dodev8="./odoo.py -c /home/ownerp/Public/gitbase/dev-helpers/conf/odoo8.conf --db-filter=v8_basis -d v8_basis"
dodev10="./odoo-bin -c /home/ownerp/Public/gitbase/dev-helpers/conf/odoo10.conf --db-filter=v10_basis -d v10_basis"
dodev11="./odoo-bin -c /home/ownerp/Public/gitbase/dev-helpers/conf/odoo11.conf --db-filter=v11_basis -d v11_basis"
# Dev
alias dps='docker ps -a'
alias dpi='docker images'
alias syspatch='sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoclean'
alias pga='sudo -u postgres pg_activity -U postgres'
alias dev8='cd /home/ownerp/venv/ && source v8-p27/bin/activate && cd /home/ownerp/Public/gitbase/v8-server/'
alias dev10='cd /home/ownerp/venv/ && source v10-p27/bin/activate && cd /home/ownerp/Public/gitbase/v10-server/'
alias dev10pypy='cd /home/ownerp/venv/ && source pypy27_v10/bin/activate && cd /home/ownerp/Public/gitbase/v10-server-pypy/'
alias dev11='cd /home/ownerp/venv/ && source v11-p36/bin/activate && cd /home/ownerp/Public/gitbase/v11-server/'
alias p27='cd /home/ownerp/venv/ && source p27/bin/activate && cd /home/ownerp/'
alias pypy27='cd /home/ownerp/venv/ && source pypy27/bin/activate && cd /home/ownerp/'
alias p36='cd /home/ownerp/venv/ && source p36/bin/activate && cd /home/ownerp/'
alias dev-='deactivate && cd /home/ownerp/Public/gitbase'
alias myed='nano -B'
alias mygit='cd /home/ownerp/Public/gitbase/'
alias exam8='echo "dev8 to clipboad $dodev8" && echo $dodev8 | xclip -selection clipboard'
alias exam10='echo "dev10 to clipboad $dodev10" && echo $dodev10 | xclip -selection clipboard'
alias exam11='echo "dev11 to clipboad $dodev11" && echo $dodev11 | xclip -selection clipboard'

mygit
