source ~/.zsh/antigen.zsh


antigen use oh-my-zsh

antigen bundle git
antigen bundle pip

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle rupa/z

antigen theme gentoo

antigen apply

alias steam='LIBGL_DRI3_DISABLE=1 steam'
