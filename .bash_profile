#!/usr/local/bin/bash
#
# .bash_profile
#
# @author Rodney Smith
#
export BASH_CONF=".bash_profile"
# Add to Environment variables.
# Load the shell dotfiles, and then some:
# * ~/.private can be used for other settings you don’t want to commit.
for file in ~/.{aliases,extra,path,bash_prompt,private}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add tab completion for many Bash commands
#if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
#	source "$(brew --prefix)/share/bash-completion/bash_completion";
#elif [ -f /etc/bash_completion ]; then
#	source /etc/bash_completion;
#fi;
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# bash completion for bash4
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
   . /usr/local/share/bash-completion/bash_completion
fi;

# Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi;

# Setting for Perl 5
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)";

# Setting for Ruby
RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Include Drush bash customizations.
if [ -f "$HOME/.drush/drush.bashrc" ] ; then
  source $HOME/.drush/drush.bashrc
fi;

# Include Drush prompt customizations.
if [ -f "$HOME/.drush/drush.prompt.sh" ] ; then
  source $HOME/.drush/drush.prompt.sh
fi;

# Python virtual environment wrapper
source /usr/local/bin/virtualenvwrapper.sh

