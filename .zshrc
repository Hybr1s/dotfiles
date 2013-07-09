autoload -U compinit
compinit

autoload -U colors
colors

setopt COMPLETE_IN_WORD AUTO_CD AUTO_PUSHD PUSHD_IGNORE_DUPS

setopt SHARE_HISTORY
setopt NO_BEEP


PROMPT="%{$fg[magenta]%}[%{$fg[yellow]%}%2~%{$fg[magenta]%}]%b "

function serve() {
  port="${1:-3000}"
  ruby -r webrick -e "s=WEBrick::HTTPServer.new(:Port => $port,:DocumentRoot => 
Dir.pwd);trap('INT'){s.shutdown};s.start"
}

function xd() {
  if [ -z "$1" ]
    then
      dirs -v
    else
      ~$1
  fi
}

alias zshre=". ~/.zshrc"
