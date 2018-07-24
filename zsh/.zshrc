source ~/.zsh/antigen.zsh
source ~/.zsh/exercism_completion.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

antigen theme gentoo

antigen apply
