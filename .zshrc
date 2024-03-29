# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wezm+"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

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
plugins=(git bower brew coffee colorize compleat cp gem git-extras gitfast gitignore iwhois git-remote-branch heroku npm node postgres rails rake redis-cli ruby rvm ssh-agent sudo themes)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/doo/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=ru_RU.UTF-8
export EDITOR='vim'
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#alias zshconfig="vim ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"
alias js="cd ~/dev/js/clickavia-front/"
alias cl="cd ~/dev/rails/clickavia-rails/"
alias start="npm install && bower install && grunt grill:server"
#alias ls="ls -thor"
alias g="git"

git config --global user.name "Ivan Verevkin"
git config --global user.email "vereva@x-root.org"
git config --global color.ui auto
git config --global advice.pushNonFastForward false
git config --global advice.statusHints false
git config --global core.whitespace trailing-space,space-before-tab
git config --global diff.renames copies
git config --global diff.mnemonicprefix true
git config --global branch.autosetupmerge true
git config --global push.default upstream
git config --global core.autocrlf input
git config --global rerere.enabled true
git config --global merge.stat true

gs() { git rebase -i HEAD~"$*"}
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
git config --global alias.put "push origin HEAD"
git config --global alias.edit-unmerged '!f() { git ls-files --unmerged | cut -f2 | sort -u ;  }; vim `f`'
git config --global alias.add-unmerged '!f() { git ls-files --unmerged | cut -f2 | sort -u ;  }; git add `f`'
git config --global alias.lc "log ORIG_HEAD.. --stat --no-merges"
