# vim: set ic :
# IMPORTANT: no whitespace between vim and :
#
# set PATH=$PATH:/Users/Documents
# export PATH
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}:/anaconda3/bin:
PATH=${PATH}:/Applications/Safari.app/Contents/MacOS:/Applications/MacVim.app/Contents/bin:/Applications/MacVim.app/Contents/MacOS:/Applications/Eclipse.app/Contents/MacOS:/Applications/Android\ Studio.app/Contents/MacOS:/Applications/PyCharm\ CE.app/Contents/MacOS
PATH=${PATH}:~/bin

export PATH

export WEB_DOCUMENTS=/Library/WebServer/Documents/
# refactored
# source ~/.aliases
# as ~/.aliases contains $CLASSPATH, it should be source after CLASSPATH is defined
source ~/.COLOR

ECLIPSE_WORKSPACE=~/eclipse-workspace/
export ECLIPSE_WORKSPACE
CUSTOM_ECLIPSE=~/custom-eclipse-key-bindings.txt
export CUSTOM_ECLIPSE

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home/bin/
# Don't add bin to JAVA_HOME
#
# JAVA_HOME is assigned in .zshrc too
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home/bin/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home/
export JAVA8=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/
export JRE=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/jre/
export JAVA_SRC_ZIP=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/src.zip

export SPRINT_IN_ACTION=~/Documents/SpringiA4_SourceCode/

export SPRINGMVC=~/Documents/springmvc-2ed-master/

export ORIGINAL_TOMCAT=~/Documents/apache-tomcat-9.0.10/
# export TOMCAT=/usr/local/Cellar/tomcat/9.0.12/libexec/
export TOMCAT=/usr/local/Cellar/tomcat/9.0.16/libexec/
# export TOMCAT_HOME=/usr/local/Cellar/tomcat/9.0.12/libexec/
export TOMCAT_HOME=/usr/local/Cellar/tomcat/9.0.16/libexec/
# export CATALINA_HOME=/usr/local/Cellar/tomcat/9.0.12/libexec/
export CATALINA_HOME=/usr/local/Cellar/tomcat/9.0.16/libexec/
CATALINA_HOME=$ORIGINAL_TOMCAT
CATALINA_HOME=~/apache-tomcat-9.0.16/
WEBAPPS=$CATALINA_HOME/webapps

# export WEBAPPS=$TOMCAT/webapps

# PATH=$JAVA_HOME:${PATH}

# draw a green banner in the first line
# CURSOR_KILL='\033[K'
# PS1="${GREEN}\u@\w\$${NC} ${CURSOR_SAVE}${CURSOR_FIRST}${BGGREEN}Hey friend, you executed number \# command! Fantastic!${CURSOR_KILL}${NC}${CURSOR_UNSAVE}${NC}"
# export PS1
# bug fixed
# should put variables CURSOR_KILL and PS1 below, since they use
# variables yet to be defined

#################################
#         _ ._  _ , _ ._        #
#       (_ ' ( `  )_  .__)      #
#     ( (  (    )   `)  ) _)    #
#    (__ (_   (_ . _) _) ,__)   #
#        `~~`\ ' . /`~~`        #
#        ,::: ;   ; :::,        #
#       ':::::::::::::::'       #
#  _jgs______/_ __ \__________  #
# |                           | #
# | env variables for locale  | #
# |___________________________| #
#                               #
#################################

# LC_MESSAGES=
# LC_TIME=


export CLASSPATH=/Library/java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/jre/lib/rt.jar

# consider using -cp on command line
# using CLASSPATH is liking using a global variable
# CLASSPATH=/opt/junit-4.6/junit-4.6.jar

export ANDROID_SDK=~/Library/Android/sdk/
export ANDROID_SRC=~/Library/Android/sdk/sources/android-28/

#                 \\\///
#                / _  _ \
#              (| (.)(.) |)
# .----------.OOOo--()--oOOO.---------.
# |                                   |
# | # escape chars to move the cursor |
# |                                   |
# '---------.oooO---------------------'
#            (   )   Oooo.
#             \ (    (   )
#              \_)    ) /
#                    (_/

###################################################################
#                          _ ._  _ , _ ._                         #
#                        (_ ' ( `  )_  .__)                       #
#                      ( (  (    )   `)  ) _)                     #
#                     (__ (_   (_ . _) _) ,__)                    #
#                         `~~`\ ' . /`~~`                         #
#                         ,::: ;   ; :::,                         #
#                        ':::::::::::::::'                        #
#  __________________jgs______/_ __ \___________________________  #
# |                                                             | #
# | # NOTE:                                                     | #
# | # echo -e "$CURSOR_UP_FIVE" moves the cursor up three lines | #
# | # REASON:                                                   | #
# | # CTRL-J or ENTER prints a newline (to execute the command) | #
# | # echo prints another newline                               | #
# | #                                                           | #
# | # TRY:                                                      | #
# | # echo -ne "$CURSOR_UP_FIVE"                                | #
# | # the cursor moves up four lines this time                  | #
# |                                                             | #
# |_____________________________________________________________| #
###################################################################

export CURSOR_FIRST='\033[0;0H'
export CURSOR_UP_FIVE='\033[5A'       # set virtualedit=block  # CAUTION: take into consideration that a newline is printed when each command is executed
export CURSOR_DOWN_FIVE='\033[5B'     # set virtualedit=block  # CAUTION: take into consideration that a newline is printed when each command is executed
export CURSOR_UP_TEN='\033[10A'       # set virtualedit=block  # CAUTION: take into consideration that a newline is printed when each command is executed
export CURSOR_DOWN_TEN='\033[10B'     # set virtualedit=block  # CAUTION: take into consideration that a newline is printed when each command is executed
export CURSOR_UP_TWENTY='\033[20A'    # set virtualedit=block  # CAUTION: take into consideration that a newline is printed when each command is executed
export CURSOR_DOWN_TWENTY='\033[20B'  # set virtualedit=block  # CAUTION: take into consideration that a newline is printed when each command is executed
export CURSOR_FORWARD_FIVE='\033[5C'
export CURSOR_BACKWARD_FIVE='\033[5D'
export CURSOR_FORWARD_TEN='\033[10C'
export CURSOR_BACKWARD_TEN='\033[10D'
export CURSOR_FORWARD_TWENTY='\033[20C'
export CURSOR_BACKWARD_TWENTY='\033[20D'
export CURSOR_SAVE='\033[s'
export CURSOR_UNSAVE='\033[u'

MAVEN_CENTRAL='http://central.maven.org/maven2/'
export MAVEN_CENTRAL

# alias javaproj="mkdir -p project/src/{main,test}/{java,resources}/"


# IMPORTANT: remember to export the environment variables!
# Without exporting, they won't be recognized in shell 
# scripts, as shell scripts are executed in a subshell

# gcap
   # _____________________________________________________
  # /                                                     \
  # |  # environment variables related to vim             |
  # \_______________________________________________  __'\
   #                                                |/   \\
   #                                                 \    \\  .
   #                                                      |\\/|
   #                                                      / " '\
   #                                                      . .   .
   #                                                     /    ) |
   #                                                    '  _.'  |
   #                                                    '-'/    \

export VIM_HOME=/usr/share/vim/vim80
export SYNTAX=$VIM_HOME/syntax
export FTPLUGIN=$VIM_HOME/ftplugin
export PLUGIN=$VIM_HOME/plugin
export MYVIM_HOME=~/.vim
export MYSYNTAX=~/.vim/syntax
export MYSPELL=~/.vim/spell/en.utf-8.add
export MYFTPLUGIN=~/.vim/ftplugin
export MYPLUGIN=~/.vim/plugin
export MYAFTER=~/.vim/after
export MYDOC=~/.vim/doc
export MYAUTOLOAD=~/.vim/autoload/
export START=~/.vim/pack/tpope/start
export MYPACK=$MYVIM_HOME/pack
export MYSTART=$MYPACK/wangxueming/start
export MYOPT=$MYPACK/wangxueming/opt

# /**********************************************************/
# /* environment variables related to files in ~/profile.d/ */
# /**********************************************************/

export VIMPRO=~/profile.d/vim.rc
export BASHPRO=~/profile.d/bash.rc
export ZSHPRO=~/profile.d/zsh.rc
export HOWDOIPRO=~/profile.d/howdoi.rc
export BOXESPRO=~/profile.d/boxes.rc

export SPRING_SOURCE=~/Documents/spring-framework-master/
export SPRING_RELEASE=~/Documents/spring-framework-5.0.8.RELEASE/

# export JUNIT_SOURCE=~/junit4/src/main/java/org/junit/
export JUNIT_SRC=~/junit4/src/main/java/org/junit/

export JDKDOC=~/Documents/JDKdocs/api/

export JAVASRC=~/Documents/javasrc

export VIMLEARNING=~/vimlearning.d
# use two variables to record color information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export MAGENTA='\033[0;35m'
export CYAN='\033[0;36m'
export GRAY='\033[0;37m'

export BOLD_RED='\033[1;31m'
export BOLD_GREEN='\033[1;32m'
export BOLD_YELLOW='\033[1;33m'
export BOLD_BLUE='\033[1;34m'
export BOLD_MAGENTA='\033[1;35m'
export BOLD_CYAN='\033[1;36m'
export BOLD_GRAY='\033[1;37m'

export FAINT_RED='\033[2;31m'
export FAINT_GREEN='\033[2;32m'
export FAINT_YELLOW='\033[2;33m'
export FAINT_BLUE='\033[2;34m'
export FAINT_MAGENTA='\033[2;35m'
export FAINT_CYAN='\033[2;36m'
export FAINT_GRAY='\033[2;37m'

export ITALIC_RED='\033[3;31m'
export ITALIC_GREEN='\033[3;32m'
export ITALIC_YELLOW='\033[3;33m'
export ITALIC_BLUE='\033[3;34m'
export ITALIC_MAGENTA='\033[3;35m'
export ITALIC_CYAN='\033[3;36m'
export ITALIC_GRAY='\033[3;37m'

export UNDERLINED_RED='\033[4;31m'
export UNDERLINED_GREEN='\033[4;32m'
export UNDERLINED_YELLOW='\033[4;33m'
export UNDERLINED_BLUE='\033[4;34m'
export UNDERLINED_MAGENTA='\033[4;35m'
export UNDERLINED_CYAN='\033[4;36m'
export UNDERLINED_GRAY='\033[4;37m'

export BLINK_RED='\033[5;31m'
export BLINK_GREEN='\033[5;32m'
export BLINK_YELLOW='\033[5;33m'
export BLINK_BLUE='\033[5;34m'
export BLINK_MAGENTA='\033[5;35m'
export BLINK_CYAN='\033[5;36m'
export BLINK_GRAY='\033[5;37m'

# swap the foreground and backgroud color
export REVERSE_RED='\033[7;31m'
export REVERSE_GREEN='\033[7;32m'
export REVERSE_YELLOW='\033[7;33m'
export REVERSE_BLUE='\033[7;34m'
export REVERSE_MAGENTA='\033[7;35m'
export REVERSE_CYAN='\033[7;36m'
export REVERSE_GRAY='\033[7;37m'

export REVERSE='\033[7m'

# bug fixed: a single 'export' command accidentally added here
# export 
# and here
# export 

# qq0fmhhr4jq ; 10@q
export BGRED='\033[0;41m'
export BGGREEN='\033[0;42m'
export BGYELLOW='\033[0;43m'
export BGBLUE='\033[0;44m'
export BGMAGENTA='\033[0;45m'
export BGCYAN='\033[0;46m'
export BGGRAY='\033[0;47m'

# export BGBLACK='\033[0;40m'

# '<,'>s/0;/40;/ # i_:
export BGBLACK_RED='\033[40;31m'
export BGBLACK_GREEN='\033[40;32m'
export BGBLACK_YELLOW='\033[40;33m'
export BGBLACK_BLUE='\033[40;34m'
export BGBLACK_MAGENTA='\033[40;35m'
export BGBLACK_CYAN='\033[40;36m'
export BGBLACK_GRAY='\033[40;37m'


NC='\033[0m' # no color
export GREEN
export NC

BOXES_SYS_CONF=/usr/local/Cellar/boxes/1.2/share/boxes-config
export BOXES_SYS_CONF

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
# 1:bold; 4:underline; 30:fg-black; 32:fg-green; 34:fg-blue; 44:bg-blue; 46:bg-cyan
PS1='\[\033[1;4;36m\]<\w> hey\$ \[\033[0;32m\]'

# PATH=/Users/wangxueming/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/sbin:/Applications/MacVim.app/Contents/bin
export CDPATH=${CDPATH}:/Users/wangxueming/Music/iTunes/iTunes\ Media/Apple\ Music/Jay\ Chou
JAY=/Users/wangxueming/Music/iTunes/iTunes\ Media/Apple\ Music/Jay\ Chou
export JAY

################################################################
echo '###########################################################################'
echo 'execute chsh -s <target-shell> if you want to change to another shell'
echo 'type "help" inside fish to see html documentation'
echo 'to accept autosuggestion, type Ctrl-F.'
echo 'to accept the first suggested word, type Alt-F.'
echo 
echo 'junitcore is an alias for "java org.junit.runner.JUnitCore"'
echo
# cat ~/git-commands
. ~/git-commands
# echo -n 'git reset <file> | ' && echo -n 'git reset --hard <commit> | ' && echo 'git reset --soft <commit>'
# echo 'git revert <commit>'
# echo 'git checkout -- <file>'
# # <<<<<<< HEAD
# # =======
# echo 'git diff | git diff --staged | git diff HEAD'
# echo 'git branch | git branch --all | git branch --current | git branch --remotes'
# # >>>>>>> master
# echo 'git stash | git stash list | git stash apply | git stash pop'
# echo 'git push | git pull | git fetch | git merge'
echo '###########################################################################'
echo

# insert two empty lines below and above, then:
# gcap
        # \\\///
       # / _  _ \
     # (| (.)(.) |)
# .--.OOOo--()--oOOO.-.
# |                   |
# | aliases down here |
# |                   |
# '-.oooO-------------'
   # (   )   Oooo.
    # \ (    (   )
     # \_)    ) /
        #    (_/

CURSOR_KILL='\033[K'
# PS1="${GREEN}\u@\w\$${NC} ${CURSOR_SAVE}${CURSOR_FIRST}${BGGREEN}Hey friend, you executed number \# command! Fantastic!${CURSOR_KILL}${NC}${CURSOR_UNSAVE}${NC}"
export PS1
#
# NOTE: mac builtin shell does not support \033[s
#
#                 \\\///
#                / _  _ \
#              (| (.)(.) |)
# .----------.OOOo--()--oOOO.----------.
# |                                    |
# | # use iterm2 when \033[s is needed |
# |                                    |
# '----------.oooO---------------------'
#             (   )   Oooo.
#              \ (    (   )
#               \_)    ) /
#                     (_/

####################################
#              \\\///              #
#             / _  _ \             #
#           (| (.)(.) |)           #
# .-------.OOOo--()--oOOO.-------. #
# |                              | #
# | source the ~/.functions file | #
# |                              | #
# '-------.oooO------------------' #
#          (   )   Oooo.           #
#           \ (    (   )           #
#            \_)    ) /            #
#                  (_/             #
#                                  #
####################################
. ~/.functions
