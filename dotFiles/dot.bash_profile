#
# ~/.bash_profile
#
export GOOGLE_API_KEY="no"
export GOOGLE_DEFAULT_CLIENT_ID="no"
export GOOGLE_DEFAULT_CLIENT_SECRET="no"
. "$HOME/.cargo/env"
exec startx
[[ -f ~/.bashrc ]] && . ~/.bashrc
