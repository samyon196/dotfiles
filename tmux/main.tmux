# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix
# don't rename windows automatically
set-option -g allow-rename off
bind-key -r < resize-pane -L 3
bind-key -r > resize-pane -R 3
bind-key -r + resize-pane -U 1
bind-key -r = resize-pane -D 1
