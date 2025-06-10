# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.


# setopt AUTO_NAME_DIRS
# setopt CDABLE_VARS
# TWBlog=/Volumes/Working\ Drive/Git_Repositories/TWBlog
# checkyoself=/Volumes/Working\ Drive/Git_Repositories/checkyoself
# checkyoself-docs=/Volumes/Working\ Drive/Git_Repositories/checkyoselfDocs
# dev-research=/Volumes/Working\ Drive/Git_Repositories/devResearch
# book-finder=/Volumes/Working\ Drive/Git_Repositories/bookFinder
# portfolio-v6=/Volumes/Working\ Drive/Git_Repositories/portfoliov6
# tiffany.blog=/Volumes/Working\ Drive/Git_Repositories/tiffanyBlog

# resume=/Volumes/Working\ Drive/Git_Repositories/resume

# Apps


# Kill Chrome because it gets stuck sometimes

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks

# Uncomment following line if you want to disable colors in ls
  # DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git dirhistory brew dircycle gitfast git-extras jsontools node npm macos repo sudo urltools web-search dirpersist history-substring-search last-working-dir safe-paste yarn zsh-completions)



ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# To differentiate aliases from other command types
ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan,bold'

# To have paths colored instead of underlined
ZSH_HIGHLIGHT_STYLES[path]='fg=magenta'

ZSH_HIGHLIGHT_STYLES[cursor]='bg=pink'

# To define styles for nested brackets up to level 4
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'

ZSH_HIGHLIGHT_STYLES[root]='bg=red'

# ------------------------------------------------------------------
# Go Paths
# ------------------------------------------------------------------
# export PATH=$PATH:$(go env GOPATH)/bin
# export GOPATH=$(go env GOPATH)
# export $PATH=$PATH:$GOBIN
# export GOROOT=/usr/local/go


#--------------------------------------------------------------------
# Ruby Path fixes
#--------------------------------------------------------------------

# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------

alias gaa='git add -A'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gmsg='git commit -m'
alias gmsga='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gdown='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gfa='git fetch --all'
alias pushor="git push -u origin main"
alias addup='git remote add upstream'
alias gitup='git fetch upstream'
alias chmain='git checkout main'
alias merup='git merge upstream/main'
alias gst='git stash'
alias gitsta='git stash apply'
alias ohshit='git revert --no commit'

# -------------------------------------------------------------------
# OTHER aliases
# -------------------------------------------------------------------
# alias python=/usr/local/bin/python3
alias cl='clear'
alias bi= 'bundle install'
alias npming='npm install -g'
alias h='history'
alias help='man'
alias pyide='open -a /Applications/PyCharm.app'
alias pych="PyCharm ."
alias gol="GoLand ."
alias rus="open -a /Applications/RustRover.app"
alias lion="open -a /Applications/CLion.app"
alias rubyide='open -a /Applications/RubyMine.app'
alias goide='open -a /Applications/GoLand.app'
alias code='open -a Visual\ Studio\ Code.app'
alias gitk='open -a /Applications/GitKraken.app'
alias brewi='brew install'
alias brupg='brew upgrade'
alias brupd='brew update'
alias szsh='source ~/.zshrc'
alias jopt='jpeg-recompress --accurate --quality medium --min 40'
alias popt='pngcrush -brute'
alias jeksthx='bundle exec jekyll serve --livereload --open-url --port 4001 --future --host 0.0.0.0 '
alias jeksth='bundle exec jekyll serve --livereload --open-url --drafts --future'
alias jeksd='bundle exec jekyll serve --livereload --open-url --drafts --future'
alias jeksttt='bundle exec jekyll serve --livereload --open-url --port 4002 --drafts --future --host 0.0.0.0'
alias jeksg='bundle exec jekyll serve --livereload --open-url --port 4003 --drafts --future --host 0.0.0.0'
alias jeksp='bundle exec jekyll serve --livereload --open-url --port 4004 --drafts --future --host 0.0.0.0'
alias jeksfit='bundle exec jekyll serve --livereload --open-url --port 3040 --drafts --future --host 0.0.0.0'
alias jeksb='bundle exec jekyll serve --livereload --open-url --port 3030 --drafts --future --host 0.0.0.0'
alias gitor='git remote add origin'
alias pushit='git push -u origin master'
alias free='git pull --rebase upstream master'
alias bug='git pull upstream master'
alias start='torus run bin/rails server'
alias console='torus run bin/rails console'
alias killpry='lsof -wni tcp:3000'
alias git=hub
alias pullup='git pull upstream master'
alias lint='./node_modules/.bin/eslint --init'
alias gac="ga . && gcmsg"
alias gpo="gp && go"
alias gundo="git undo"
alias yo="yo"
alias dewebpng='find . -name "*.webp" | xargs -I {} dwebp {} -o {}.png'
alias dewebpgif='find . -name "*.webp" | xargs -I {} dwebp {} -o {}.gif'
alias dewebpjpg='find . -name "*.webp" | xargs -I {} dwebp {} -o {}.jpg'
alias mp3="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0"
alias mkv="youtube-dl --merge-output-format mkv"
alias mp4="youtube-dl --merge-output-format mp4"
alias mp3play="youtube-dl -ict --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0 "
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias ls='colorls --dark --sort-dirs --report -A --gs'
alias lc='colorls --dark --sort-dirs --report -A --gs --tree'
alias jeksdoc="docker-compose up"

# exa file list
alias la="exa --git --color=automatic -x"
# `cat` with beautiful colors. requires: pip install -U Pygments
alias c='pygmentize -O style=borland -f console256 -g'

alias wmyip='curl ip.appspot.com'
#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
#alias memHogsTop='top -l 1 -o rsize | head -20'
#alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
# Useful Aliases

alias l="exa -l"
#alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias alz="alias | fzf"

# alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

########################
# Terminalizer Aliases #
########################

#alias trex='terminalizer record'
#alias tconfig='terminalizer config'
#alias tren='terminalizer render'
#alias tplay='terminalizer play'
#alias tgen='terminalizer generate'
#alias tshare='terminalizer share'

#fpath=(/usr/local/share/zsh-completions $fpath)

########################
# Useful Functions     #
########################

# Git sometimes goes into a detached head state. git_prompt_info doesn't
# return anything in this case. So wrap it in another function and check
# for an empty string.
function check_git_prompt_info() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
      if [[ -z $(git_prompt_info) ]]; then
          echo "%{$fg[magenta]%}detached-head%{$reset_color%})"
      else
          echo "$(git_prompt_info)"
      fi
  fi
}

########################
# Location Path Setter #
########################

function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

function acp() {
  git add .
  git commit -m "Update something"
  git push
}

# Function taken from Jeff Geerling https://github.com/geerlingguy/dotfiles
# that syncs and pushes your branches
function gsync() {
 if [[ ! "$1" ]] ; then
     echo "You must supply a branch."
     return 0
 fi

 BRANCHES=$(git branch --list $1)
 if [ ! "$BRANCHES" ] ; then
    echo "Branch $1 does not exist."
    return 0
 fi

 git checkout "$1" && \
 git pull upstream "$1" && \
 git push origin "$1"
}

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.xz)    tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bkz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source /Users/tiffanywhite/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

BROWSER="Vivaldi.app"; export BROWSER
EDITOR=nvim; export EDITOR
VISUAL=wezterm; export VISUAL

eval "$(hub alias -s)"
export GITHUB_TOKEN=$token

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

. "$HOME/.cargo/env"

##############
# Yarn Paths #
##############


# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

########################
# Ruby/Jekyll Fix      #
########################


########################################
# Flags for Ruby Homebrew macOS errors #
########################################

# export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

# export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"

 eval "$(fzf --zsh)"

# Fix npm install errors
 # This loads nvm bash_completion

###########################
# Python Environment Path #
###########################


# pnpm
# pnpm end

#export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES

##########################
# Homebrew directory fix #
##########################

eval "$(fzf --zsh)"


##############
# Yazi Config #
##############


#eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/catppuccin_frappe.omp.json)"

#eval "$(oh-my-posh init zsh --config ~/.mycat.omp.toml)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# (( ! ${+functions[p10k]} )) || p10k finalize


# Created by `pipx` on 2024-06-24 17:58:35


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

alias vim="nvim"
