# Directory
alias dev='cd ~/dev'
alias home='cd ~'
alias omz='cd ~/.conf/.oh-my-zsh'

# Git
alias master='git checkout master'
alias push='git push origin HEAD'
alias pushf='git push --force-with-lease origin HEAD'
alias branch='git branch'
alias nbranch='git checkout -b $1'
alias status='git status'
alias newt='git worktree add $1'
alias stash='git stash'
alias pop='git stash pop'
alias apply='git stash apply'
alias addall='git add --all .'

# File Aliases
alias mv='mv -i'
alias cp='cp -i'
alias h='history'
alias ls='ls -F'
alias la='ls -la'
alias ll='ls -l'

# FZF
alias d='cd $(find * -type d | fzf)'
alias f='code $(find * -type f | fzf)'

# QMK 
alias qcomp='qmk compile -kb zsa/moonlander -km Fan'
