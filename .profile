export JAVA_HOME=/Library/Java/Home
export ANDROID_HOME="/Users/dlatimer/Library/Android/sdk/platform-tools"
export PATH=$PATH:$ANDROID_HOME
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:/usr/local/bin

export PIP_REQUIRE_VIRTUALENV=true
export WORKON_HOME=$HOME/envs
export VIRTUALENVWRAPPER_PYTHON=`which python3`
source /usr/local/bin/virtualenvwrapper.sh

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
