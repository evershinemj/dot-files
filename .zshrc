# If you come from bash you might have to change your $PATH.
# export PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:$HOME/bin:/usr/local/bin:$PATH

if test -f ~/.bashrc; then
    source ~/.bashrc
fi
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
alias hisfive='history -5'
alias histen='history -10'
alias histwenty='history -20'

alias vimjava='vim `find . -name "*.java"`'

alias bashtips='source ~/profile.d/bash.rc'
alias zshtips='source ~/profile.d/zsh.rc'

# change HTTPS to HTTP
# HOWDOI_DISABLE_SSL=

alias mvngen='mvn -B archetype:generate \
    -DarchetypeGroupId=org.apche.maven.archetypes \
    -DgroupId=com.baixianliu.app \
    -DartifactId=my-app'

GITHUB_USER=wangxueming
GITHUB_PASSWORD=mj199207

WY=~/Music/网易云音乐
export WY

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home/
export JAVA_HOME
# export JAVA_HOME=$JAVA8

# export PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:$HOME/bin:$PATH

# this would import modules in ~/python first, followed by
# modules in ~, if any
# thus if a file has the same name as in stdlib or third party libs,
# it would be imported, which might be unexpected
export PYTHONPATH=~/python:~

# # CLASSPATH=${JARPATH:-/Users/wangxueming/jars}:${JAVAPACKAGES:-/Users/wangxueming/javapackages}:${CLASSPATH:=~}
# CLASSPATH=${JARPATH:-/Users/wangxueming/jars/junit-4.6.jar}:${CLASSPATH:=~}
# # CLASSPATH=.:$CLASSPATH
# CLASSPATH=$CLASSPATH:.

############################################################################################
#  ____________________________________________________________________________________    #
# /\                                                                                   \   #
# \_| # IMPORTANT: include all jars in ~/jars into CLASSPATH, not the ~/jars directory |   #
#   |                                                                                  |   #
#   |   _______________________________________________________________________________|_  #
#    \_/_________________________________________________________________________________/ #
############################################################################################
# CLASSPATH=~/jars/*

#                  \\\///
#                 / _  _ \
#               (| (.)(.) |)
# .-----------.OOOo--()--oOOO.-----------.
# |                                      |
# | add each jar in ~/jars/ to CLASSPATH |
# |                                      |
# '-----------.oooO----------------------'
#              (   )   Oooo.
#               \ (    (   )
#                \_)    ) /
#                      (_/
CLASSPATH=
# for jar in ~/jars/*
for jar in ~/jars/*.jar
do
    CLASSPATH=${CLASSPATH}:$jar
done
CLASSPATH=${CLASSPATH}:.
export CLASSPATH

CLASSPATH=${CLASSPATH}:~/java

CLASSPATH=${CLASSPATH}:${JRE}/rt.jar

CLASSPATH=${CLASSPATH}:/opt/junit-4.12/junit-4.12.jar

export PRO=~/.bash_profile

PYTHON_HOME=/Library/Frameworks/Python.framework/Versions/3.7/bin
export PYTHON_HOME
PYTHON_STDLIB=/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7
export PYTHON_STDLIB

# GREEN='\033[0;32m'
# RED='\033[0;31m'
# NC='\033[0m' # no color

# open -a Safari ~/xml/jay.xml
# open -a Firefox ~/xml/jay.xml
# open -e sth   open with TextEdit

# Path to your oh-my-zsh installation.
export ZSH="/Users/wangxueming/.oh-my-zsh"

alias vbm='VBoxManage'
alias ubuntu='vbm startvm Ubuntu'
alias centos='vbm startvm CentOS'

alias vimdiffbp='vimdiff ~/.bash_profile{,\~}'
alias vimdiffbr='vimdiff ~/.bashrc{,\~}'
alias vimdiffzsh='vimdiff ~/.zshrc{,\~}'

alias vimbz='vim -O ~/.{ba,z}shrc'

alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
# ZSH_THEME="agnoster"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  spring
  gradle
  github
  python
  mvn
  pip
  osx
  docker
  autojump
)

source $ZSH/oh-my-zsh.sh

# CLASSPATH has been defined, so OK to source ~/.aliases here
# source ~/.aliases
# source ~/.variables
source ~/.variables
source ~/.aliases  

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# PATH=${PATH}:/Applications/MacVim.app/Contents/bin
# PATH='/Library/Frameworks/Python.framework/Versions/3.7/bin:/Users/wangxueming/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/sbin:/Applications/MacVim.app/Contents/bin:/Applications/PyCharm CE.app/Contents/MacOS'
# PATH=${PATH}:/Applications/Android\ Studio.app/Contents/MacOS
