# border colours
set -g pane-border-style fg=cyan
set -g pane-active-border-style "bg=default fg=magenta"
set -g default-terminal "screen-256color"
set -g status-bg cyan
set -g status-fg black
setw -g window-status-current-style bg=magenta
setw -g window-status-style bg=blue

# Start windows and panes at 1, not 0
set -g base-index 1
setw -g pane-base-index 1


setw -g status-left " #S "


set -g status-right-length "100"
# 24 hour time: `%H:%M`
# 12 hour time: `%-I:%M %p`
set -g status-right "#[bg=white]#[fg=black] %a %d/%m/%y #[fg=blue].:. #[fg=black]%H:%M #[fg=black,bg=cyan] #(echo $USER) @ #h "