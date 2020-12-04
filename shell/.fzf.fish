set -gx FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'

source /usr/share/fzf/shell/key-bindings.fish

alias fzfp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
