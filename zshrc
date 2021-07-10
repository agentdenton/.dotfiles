ZSH_STUFF="$HOME/.dotfiles/zsh"
bindkey -v

alias lg="lazygit"
alias ls="exa"
alias ll="exa -la"
alias l="exa -l"
alias tmux="TERM=screen-256color-bce tmux"
alias vim="nvim"
alias za="zathura"
alias nnn="nnn -e"
alias xcy="xclip"
alias xcp="xclip -o"
alias wb="west build"
alias wf="west flash"
alias njc="ninja -C build clean"
alias njb="clear && ninja -C build"
alias mcb="meson . build --cross-file=cross.ini"
alias mcbd="meson . build --cross-file=cross.ini --buildtype=debug"
alias mcbr="meson . build --cross-file=cross.ini --buildtype=release"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export FZF_DEFAULT_OPTS="-m --height 50% --border"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
--color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B'

# NNN plugins install curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh
export NNN_FIFO=/tmp/nnn.fifo
export NNN_FCOLORS="0B0B04060006060009060B06"

export MANPAGER="nvim -c 'set ft=man' -"

export EXA_STRICT=1
export BAT_THEME="Nord"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=nvim
export VISUAL=nvim

eval $(dircolors $ZSH_STUFF/dir_colors)
eval $(starship init zsh)
