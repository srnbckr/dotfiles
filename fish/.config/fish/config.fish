# PATH configuration
#
test -d /opt/intellij/bin ; and set PATH $PATH /opt/intellij/bin/
test -d /usr/local/go/bin ; and set PATH $PATH /usr/local/go/bin
test -d ~/.local/bin ; and set PATH $PATH ~/.local/bin

# Kube configs
if test -e ~/projects/cit/kube-configs  
    set -x KUBECONFIG (find ~/projects/cit/kube-configs -type f -name '*yaml' | tr '\n' ':' | sed 's/:$//')
end 

# Golang configuration
if type -q go
    set -x GOPATH (go env GOPATH)
    set -x PATH $PATH (go env GOPATH)/bin
    set -x GO111MODULE on
end 

# env variables
set -x XDG_CONFIG_HOME $HOME/.config


# Nightfox Color Palette
# Style: nightfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/nightfox/nightfox_fish.fish
set -l foreground cdcecf
set -l selection 2b3b51
set -l comment 738091
set -l red c94f6d
set -l orange f4a261
set -l yellow dbc074
set -l green 81b29a
set -l purple 9d79d6
set -l cyan 63cdcf
set -l pink d67ad2

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

# Init zoxide
zoxide init fish | source
