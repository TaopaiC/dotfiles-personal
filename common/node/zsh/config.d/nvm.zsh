lazy_source () {
    eval "$1 () { [ -f $2 ] && source $2 && $1 \$@ }"
}

NVM_SOURCE=$HOME/.nvm/nvm.sh
# This loads NVM
lazy_source nvm $NVM_SOURCE