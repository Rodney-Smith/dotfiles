# Add to the $PATH. Lower ones have higher priority.
export PATH="$HOME/bin:$PATH"
export GEM_HOME="$HOME/.gem:$PATH"
export PATH="$GEM_HOME/bin:$PATH"
export JAVA_HOME="/Library/Java/Home"
export CATALINA_HOME="/usr/local/opt/tomcat/libexec"
export CATALINA_BASE="$CATALINA_HOME/conf"

# added by Miniconda3 installer
export PATH="/Users/SmithR4/miniconda3/bin:$PATH"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/bin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/git/bin:$PATH"
export PATH="$HOME/anaconda/bin:$PATH"
export PATH="$PATH:/usr/local/tomcat/bin"
export PATH="$PATH:/usr/local/opt/gettext/bin"
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/usr/local/maven/bin"
export PATH="$PATH:/usr/local/jmeter/bin"
export PATH="$PATH:/usr/local/cassandra/bin"
export PATH="$PATH:/usr/local/ant/bin"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="$PATH:/usr/local/opt/libxml2/bin"

# Core Utils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Load the shell dotfiles, and then some:
# * ~/.private can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,aliases,private}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add tab completion for many Bash commands
#if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
#	source "$(brew --prefix)/share/bash-completion/bash_completion";
#elif [ -f /etc/bash_completion ]; then
#	source /etc/bash_completion;
#fi;

# bash completion for bash4
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
   . /usr/local/share/bash-completion/bash_completion
fi;

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi;

# Setting for Perl 5
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)";

alias python=python3
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Include Drush bash customizations.
if [ -f "/Users/SmithR4/.drush/drush.bashrc" ] ; then
  source /Users/SmithR4/.drush/drush.bashrc
fi;

# Include Drush prompt customizations.
if [ -f "/Users/SmithR4/.drush/drush.prompt.sh" ] ; then
  source /Users/SmithR4/.drush/drush.prompt.sh
fi;
