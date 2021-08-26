ncd ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "export" as in:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    # NOTE: NNN_TMPFILE is fixed, should not be modified
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

set -o vi

alias lg="lazygit"
alias ls="exa"
alias ll="exa -la"
alias l="exa -l"
alias vim="nvim"
alias nnn="nnn -e"
alias xcy="xclip"
alias xcp="xclip -o"
alias tmux="tmux -2"
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
--color=fg:#d1d5da,bg:#24292e,hl:#bb9af7
--color=fg+:#d1d5da,bg+:#24292e,hl+:#ff938a
--color=info:#b083f0,prompt:#7dcfff,pointer:#7dcfff
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a'

export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
export NNN_FCOLORS="0B0B04060006060009060B06"

export MANPAGER="nvim -c 'set ft=man' -"

export EXA_STRICT=1
export BAT_THEME="ansi"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR="nvim"
export VISUAL="nvim"

eval "$(starship init bash)"
