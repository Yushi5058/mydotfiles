export EDITOR=nvim

source /etc/profile.d/bash_completion.sh

source /usr/share/git-core/contrib/completion/git-prompt.sh

alias ranger="cd \$(ranger --choosedir=\$HOME/.rangerdir)\$(eval echo -n \$(cat \$HOME/.rangerdir)) && clear"

alias ls='ls --color=auto' #Colorize the ls output
alias ll='ls -l' #Display the ls output in long format
alias la='ls -a' #Show hidden files and directories
alias l.='ls -d .* --color=auto' #Show only hidden files and directories

alias vim=nvim

source ~/.bash/git-prompt.sh

eval "$(starship init bash)"
