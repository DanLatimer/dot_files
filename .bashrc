alias gd="printf \"=========== CHANGE LIST ===========\\n\";git s;printf \"\\n=============== LOG ===============\\n\";git l;printf \"\\n=========== BRANCH LIST ===========\\n\";git bv;"
alias apply-local="git cherry-pick local-config"
alias apply-prod="git cherry-pick prod-config"
alias remove-merged="git branch -vv | grep \"^[^+*].*: behind\" | awk '{print \"git branch -d \"\$1}' | xargs -0 bash -c"
alias dev="cd  ~/src/intellitrack-service/intellitrack-webui/"

alias rm-bin="find . -type d -name \"bin\" ! -path \"*node_modules*\" ! -path \"*vendor*\" -exec rm -rf {} +"
alias rm-obj="find . -type d -name \"obj\" ! -path \"*node_modules*\" ! -path \"*vendor*\" -exec rm -rf {} +"
alias rm-bin-obj="rm-bin && rm-obj"

###-tns-completion-start-###
if [ -f C:/Users/daniel.latimer/.tnsrc ]; then 
    source C:/Users/daniel.latimer/.tnsrc 
fi
###-tns-completion-end-###

export PATH='/c/Program Files (x86)/Vim/vim81/vim.exe':$PATH
export PATH='c:\Users\daniel.latimer\AppData\Roaming\npm':$PATH

