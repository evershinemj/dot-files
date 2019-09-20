if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

#        \\\///
#       / _  _ \
#     (| (.)(.) |)
# .-.OOOo--()--oOOO.-.
# |                  |
# | PS1 assignment   |
# |                  |
# '-.oooO------------'
#    (   )   Oooo.
#     \ (    (   )
#      \_)    ) /
#            (_/
PS1='\[\033[1;4;36m\]<\w> hey\$ \[\033[0;32m\]'
current_branch=`git branch --current`
export current_branch
PS1="${PS1} [$current_branch]" 

# PATH set in .bashrc
# PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}:/anaconda3/bin:
# PATH=${PATH}:/Applications/Safari.app/Contents/MacOS:/Applications/MacVim.app/Contents/bin:/Applications/MacVim.app/Contents/MacOS:/Applications/Eclipse.app/Contents/MacOS:/Applications/Android\ Studio.app/Contents/MacOS:/Applications/PyCharm\ CE.app/Contents/MacOS

# PAGER has been to: less
VISUAL=vi
EDITOR=vi
export VISUAL
export EDITOR
echo
echo '**EDITOR**:' $EDITOR
echo '**PAGER**:' $PAGER
echo

# echo $PATH

# to solve python3, idle3 and pip3 location problems, 
# set PYTHON_HOME to the following value, and prepend
# it to PATH

# note that $PYTHON_HOME/python3 and $PYTHON_HOME/idle3
# are symbolic links to $PYTHON_HOME/python3.7 an
# $PYTHON_HOME/idle3.7 in the same directory, respectively

PYTHON_HOME=/Library/Frameworks/Python.framework/Versions/3.7/bin
export PYTHON_HOME

# PATH=
# while read pathname
# do
#     if test -z $PATH; then
# 	PATH=$pathname
#     else
#     PATH=${PATH}:$pathname
#     fi
# done < /etc/paths.d/basicpath
# 
# echo -e PATH is set to ${PATH} \
#     '\nby /etc/paths.d/basicpath'
# echo to be added soon


# set -x
# -g is only available in zsh
# alias -g H='| head'
# alias -g T='| tail'
# alias -g G='| grep'
# alias -g L='| less'

# wget -O <outputfile> url

# P in mplayer shows progress in the TERMINAL
BASH_ENV=~/elsewhere.sh
ANT_HOME=/usr/local/Cellar/ant/1.10.5
export BASH_ENV

export GIT_EDITOR=vim

# line longer than textwidth; automatically inserts a
# linebreak (use :set linebreak? to find out the linebreak
# state

# newlines are escaped in double (and single) quotes
PS1_1="\[\033[1;4;32m\]\l \[\033[33;21m\]job#: \j \[\033[35m\]
\[\033[34m\]\! \w \[\033[1;5;36;24m\]\$ \[\033[0m\]" 

PS1_2="\[\033[s\033[0;0H\033[0;41m\033[K\033[0;33m\t\033[u\033[0m\]$PS1_1"

# PS1=$PS1_1
#
# PS1=$PS1_2

# PRO="/Users/wangxueming/.bash_profile"
VIMDOC='/usr/share/vim/vim80/doc'

# copy the directory and subdirectories
# cp source dest
# copy the subdirectories
# cp source/ dest

# default 24
# PS1="\w \d \@ version: \v #cmd: \#\n\l #job: \j \!\$ "

# put aliases into .bashrc to allow subshells to access them
# alias histen='history 10'
# alias hisfive='history 5'
# alias histwenty='history 20'
# alias ipy='ipython'
LINES=30 
# default 80
COLUMNS=90
export VIMDOC
APACHE='/Library/WebServer/Documents/'
WY=~/Music/网易云音乐
export WY
export APACHE
export PRO
# set on vi mode for command line editting
set -o vi 
# set on emacs mode for command line editting
set -o emacs
# double check VISUAL and EDITOR
# alias s="startup.sh"
# alias h="history"
# alias gvim="MacVim"
# alias qsed="sed -n"
# alias rm='rm -iv'
# alias cp='cp -iv'
# alias mv='mv -iv'
# unalias gvim
# alias vbm='VBoxManage'
# prepending ~ to specify absolute path is a good practice
# this make the following commands execute well in any
# working directory
# can also be: alias gvim="gvim -u NONE -U ~/.gvimrc"
# alias foo='cd /usr; ls ; cd -'
# alias grepi='grep -i'
# alias gvim="gvim -u ~/.gvimrc"
# alias gview="gview -u ~/.gvimrc"
# alias gvimdiff="gvimdiff -u ~/.gvimrc"
# alias mvim="mvim -u ~/.gvimrc"
# alias d1du="du -d1"
# alias d2du="du -d2"
# alias grep='grep --color=auto'
# alias li='ls -liG'
# alias lc='ls -lG'
# alias ll='ls -l'
# alias lh='ls -lh' 
# alias lsd='ls -ld'
# alias lessll='ls -lFt | less'
# alias lesslr='ll -RS | less'
# alias apache='apachectl'
# alias ll='ls -l'
# alias egrep='egrep --color=auto'
# added by Anaconda3 5.1.0 installer
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/
export JAVA_HOME
# export TOMCAT_HOME=/Users/wangxueming/Documents/apache-tomcat-9.0.10
export TOMCAT_HOME=/usr/local/Cellar/tomcat/9.0.12/libexec

# search path for modules
export PYTHONPATH=~:/usr/local/lib/mypythonlib:~/python:~/Documents/python:/Library/Frameworks/Python.frameworks/Versions/3.7

# export CDPATH=:/Users/wangxueming/Documents/effective-java-examples-master/src/main/java/org:/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents:$JAVA_HOME:/Users/wangxueming/Documents:/Users/wangxueming/Documents/corejava:/Users/wangxueming/Documents/apache-tomcat-9.0.10/webapps/home:/Users/wangxueming/Documents/apache-tomcat-9.0.10/webapps:/Users/wangxueming/Documents/apache-tomcat-9.0.10:/Users/wangxueming/Library/Android:/Users/wangxueming/Library/Android/sdk/sources/android-28:$PYTHONPATH

# $atom=/Users/wangxueming/Documents/apache-tomcat-9.0.10/webapps


# PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/anaconda3/bin:

# PATH=${PATH}:/Applications/MacVim.app/Contents/bin
# $TOMCAT_HOME=/Users/wangxueming/Documents/apache-tomcat-9.0.10
# export TOMCAT_HOME=/Users/wangxueming/Documents/apache-tomcat-9.0.10:$TOMCAT_HOME
# export JAVA_HOME=`/usr/libexec/java_home`
# PYTHON='/Users/wangxueming/Documents/python'
export PYTHON
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
DOCUMENT="/Users/wangxueming/Documents"
export DOCUMENT
CLASSPATH=:/Users/wangxueming/Documents:/Users/wangxueming/aspectj1.9/lib/aspectjrt.jar:/Users/wangxueming/Documents/apache-tomcat-9.0.10/lib:DOCUMENT
# DOCUMENT="/Users/wangxueming/Documents"
# export DOCUMENT

# JARPATH=~/jars
# specify each jar, rather than the directory containing jars
JARPATH=~/jars/*
# CLASSPATH=${JARPATH:-/Users/wangxueming/jars}:${JAVAPACKAGES:-/Users/wangxueming/javapackages}:$CLASSPATH
CLASSPATH=${JARPATH:-/Users/wangxueming/jars/junit-4.6.jar}:$CLASSPATH
export CLASSPATH
# /Users/wangxueming/aspectj1.9/bin:/Users/wangxueming/Documents/apache-maven-3.5.4/bin::/usr/local/mysql/bin:/Users/wangxueming/Documents/apache-tomcat-9.0.10/bin


# PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# /Users/wangxueming/Downloads/apache-ant-1.9.13/bin::/Library/Frameworks/Python.framework/Versions/3.7/bin
# PATH=":${PATH}"

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
