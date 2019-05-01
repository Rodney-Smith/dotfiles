#!/usr/local/bin/bash
export BASH_CONF="bash_profile"
# old way
#if [ -r ~/.bashrc ]; then source ~/.bashrc fi
# new way
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
