# Use ruby 2.0 (uberspace)
export PATH=/package/host/localhost/ruby-2.0.0/bin:$PATH
export PATH=$HOME/.gem/ruby/2.0.0/bin:$PATH

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

# history
setopt APPEND_HISTORY

# never ever beep ever
setopt NO_BEEP

# disable mail checking (uberspace)
MAILCHECK=0

# fancy prompt
PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[
%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"%Y-%m-%d %I:%M:%S"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}%?$(retcode)%{\e[0;34m%}%B]%{\e[0m%}%b '

# some aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias zshre=". ~/.zshrc"
alias la="ls -a"
