alias gd="printf \"=========== CHANGE LIST ===========\\n\";git s;printf \"\\n=============== LOG ===============\\n\";git l;printf \"\\n=========== BRANCH LIST ===========\\n\";git bv;"

# DEV ENV STUFF
alias docker_env="eval \$(docker-machine env default)"

#bindkey -e
#bindkey '^[[1;5C' forward-word
#bindkey '^[[1;5D' backward-word

bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

delete_merged() { git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d }
admin() { cd ~/src/aiotv-admin }
core() { cd ~/src/aiotv-core }
