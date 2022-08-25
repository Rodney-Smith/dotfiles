#!/usr/local/bin/bash
#
# .bashrc
#
# @author Rodney Smith
#
export BASH_CONF=".bashrc"
# set JAVA Home Directory
export JAVA_HOME="/Library/Java/Home"
# set Apache Ant Home Directory
export ANT_HOME="/usr/local/opt/ant/libexec"
export ANT_OPTS="-Xms256M -Xmx512M"
# set Apache Maven Home Directory
export MAVEN_HOME="/usr/local/opt/maven"
export M2_HOME="/usr/local/opt/maven"
export M3_HOME="/usr/local/opt/maven"
export M2="$M2_HOME/bin"
export MAVEN_OPTS="-Xms256M -Xmx512M"
# set Apache Tomcat Home Directory
export CATALINA_HOME="/usr/local/opt/tomcat/libexec"
export TOMCAT_HOME="/usr/local/opt/tomcat"
# set JMeter Home Directory
export JMETER_HOME="/usr/local/opt/jmeter"
# set MySQL Home Directory
export MYSQL_HOME="/usr/local/opt/mysql"
# to disable Google analytics being sent
export HOMEBREW_NO_ANALYTICS=1
# enable Terminal color
export CLICOLOR=1
# set EDITOR to atom.io
if [[ -x "/usr/local/bin/atom" ]]; then
    export EDITOR="atom --wait";
fi
# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ] ; then
    source /etc/bash_completion
fi;
#Git auto-complete
if [ -f ~/.git-completion.bash ] ; then
    source ~/.git-completion.bash
fi;
# Setting for Python 3
alias python=python3
if which rbenv > /dev/null; then
    eval "$(rbenv init -)"
fi;
# Setting for Perl 5
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
# Include Drush bash customizations.
if [ -f "$HOME/.drush/drush.bashrc" ] ; then
    source $HOME/.drush/drush.bashrc
fi;
# Include Drush prompt customizations.
if [ -f "$HOME/.drush/drush.prompt.sh" ] ; then
    source $HOME/.drush/drush.prompt.sh
fi;
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{aliases,extra,path,bash_prompt,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
