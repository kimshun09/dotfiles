#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# xinput set-button-map "PixArt Dell MS116 USB Optical Mouse" 1 0 3 4 5 6 7 8 9 10 11 12

alias gval='grep Valid'
alias gval3='grep -B 3 Valid'
alias gval5='grep -B 5 Valid'
alias work='cd /work/kimshun'
alias le='less'
alias gstatn='gpustat -n normal'
alias gstatl='gpustat -n long'
alias gstatla='gpustat -n large'
alias gstatr='gpustat -n rtx'
alias gstatn2='gpustat2 -n normal'
alias gstatl2='gpustat2 -n long'
alias gstatla2='gpustat2 -n large'
alias gstatr2='gpustat2 -n rtx'
alias labpyact='. /usr/tool/python/python3.6.8_20190930/bin/activate'
alias pyact='. /work/kimshun/venv/bin/activate'
alias sbatch='sbatch --gres=gpu:1'
alias squeue='squeue -o "%10i %18j %15u %.11M %.2t %9P %R"'
alias grepap='grep "Average Precision  (AP) @\[ IoU=0.50:0.95 | area=   all"'
alias ldapsearchlab='ldapsearch -h parsley2 -x -D cn=admin,dc=sp,dc=nitech,dc=ac,dc=jp -W -b dc=sp,dc=nitech,dc=ac,dc=jp'

setopt nolistbeep

stty erase 

export PATH="/Users/shunsuke-kimura/Library/Python/3.8/bin:$PATH"
export PATH="/Users/shunsuke-kimura/go/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kimshun/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kimshun/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kimshun/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kimshun/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shunsuke-kimura/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shunsuke-kimura/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shunsuke-kimura/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shunsuke-kimura/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

#if (which zprof > /dev/null 2>&1) ;then
#      zprof
#fi

nvm() {
    unset -f nvm
    source "${NVM_DIR:-$HOME/.nvm}/nvm.sh"
    nvm "$@"
}


