export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

alias ll='ls -lhA'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias reset_dns='sudo killall -HUP mDNSResponder'

# alias over knife to make it faster
alias knifef="BUNDLE_GEMFILE=~/.gemfile bundle exec knife"

function knives() {
  if [ -z "$2" ]
  then knifef ssh "$1" "hostname" -x lumoslabs -a hostname | sort
  else knifef ssh "$1" "$2" -x lumoslabs -a hostname | sort
  fi
}
