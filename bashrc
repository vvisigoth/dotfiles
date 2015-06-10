# bindke y-v
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export PATH="/home/anthony/mallet-2.0.7/bin/:$PATH"
# export JAVA_HOME="/usr/bin/java"
set -o vi
alias AMI='cd /Users/anthonyarroyo/AMIsvnrepos'
alias grep='grep --color=auto'
alias chrome='open -a "Google Chrome"'
alias lsp='find `pwd` -name "*.*"'
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias lristart='python lri_admin.py create rest && ./pywebapp.py rest'
alias lriload='./querytest.py test_suites/load/suite_add_subjects.yaml && ./querytest.py test_suites/load/ccss_suite_new.yaml && ./querytest.py test_suites/paths/math/ccss_add_path_Math.json && ./querytest.py test_suites/paths/ela/ccss_add_path_ela.json && ./querytest.py test_suites/resources/learning_resources.yaml'
alias LPS_ROOT="/var/openlaszlo/lps-4.9.0/Server/lps-4.9.0/"
alias olstart='sudo -E $LPS_ROOT/../tomcat-5.0.24/bin/startup.sh'
alias olstop='sudo -E $LPS_ROOT/../tomcat-5.0.24/bin/shutdown.sh'
alias ngxstat='ps ax | grep nginx'
alias ls='ls -G'
alias mvim='/usr/local/Cellar/macvim/7.4-73_1/bin/mvim'
alias wiki='cd ~/data_viz/data-visualization-sandbox/data-visualization-sandbox.wiki/'
alias viz='cd ~/data_viz/data-visualization-sandbox/'
alias lri='cd ~/AMIsvnrepos/lri/lriserver/'
alias iontrail='open ~/iontrail/obj-ff-dbg/dist/Nightly.app/'
alias enc="cd ~/Documents/Aptana\ Studio\ 3\ Workspace/encirca"
alias pop="cd ~/amog_populate; source bin/activate; ./populate.py"
# maybe make a recursive option?
#alias noswp='find . -type f -name \*.swp | xargs rm'
# alias work='/Users/anthonyarroyo/scripts/workin.sh'

noswp() { find "$@" -type f -name \*.swp | xargs rm; }


ltx() { xelatex "$@".tex; open "$@".pdf; }

work() { /Users/anthonyarroyo/scripts/workin.sh "$@" ;}
__git_ps1()
{
    ref="$(git symbolic-ref HEAD 2>/dev/null)" || return
    echo "("${ref##refs/heads/}") "
}

prompt()
{
    PS3="\[\033[1;36m\][\t]\[\033[1;37m\] \u@\h\$ \[\033[1;34m\]\w \[\033[1;33m\]\$(__git_ps1)\[\033[0m\]"
    PS4="\[\033[1;37m\]\u@\h\$ \[\033[1;34m\]\W \[\033[0m\]"
    if [[ `tput cols` -lt 150 ]]; then
        PS1=$PS4
    else
        PS1=$PS3
    fi
}

server() { python -m SimpleHTTPServer "$@"; }

tree() { /Users/anthonyarroyo/scripts/tree.sh "$@";}

# prompt() 
# { 
#     PS1L="\[\033[1;37m\]\u@\h\$ \[\033[1;33m\]\$(__git_ps1)\[\033[1;34m\]\W \[\033[0m\]"
#     PS1R="\[\033[1;36m\][\t]\[\033[0m\]\n"
#     LEN=(${#PS1}-16)
#     # PS1=`printf "%s%$(($COLUMNS-$LEN))s" "$PS1L" "$PS1R"`
#     PS1=`printf "%s%$(($COLUMNS-${#PS1L}))s" "$PS1L" "$PS1R"`
# }

PROMPT_COMMAND=prompt
export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

set colorcolumn=80

source ~/.nvm/nvm.sh
