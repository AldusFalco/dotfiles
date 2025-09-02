— Monokai Theme (Portable)
```
# ~/.tmux.conf 

# ——— Terminal & Compatibility ———
# ——— Monokai Theme (With Active Pane Highlight) ———
# Uses standard 256-color palette — no Nerd Fonts, no hex

# Status bar (dark background, light text)
set -g status-style bg=colour235,fg=colour231

# Pane borders: subtle gray for inactive, bold orange for active
set -g pane-border-style fg=colour238          # Inactive panes
set -g pane-active-border-style fg=colour166,bold  # Active pane: bright orange + bold

# Messages (e.g., display-message)
set -g message-style bg=colour235,fg=colour166,bold

# Copy mode: highlight in orange
setw -g mode-style bg=colour166,fg=colour16

# Status bar (clean, no symbols)
set -g status-left '#[bg=colour166,fg=colour16] #S #[default] | '
set -g status-right '%H:%M | %d-%b'

# Window tabs
setw -g window-status-format '#[fg=colour240]#I:#W'
setw -g window-status-current-format '#[fg=colour166,bold]#I:#W'

```


Testing tmux:
```
# reload config while in tmux
unbind r
bind r source-file ~/.tmux.conf

# remap prefix to screens
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# use mouse (can use scroll wheel to resize panes)
#set -g mouse on

# takes on colors of current terminal
#set -g default-terminal "xterm-256color"

# change colors-------------------------
# ~/.tmux.conf — Monokai Theme (Portable)

# ——— Terminal & Compatibility ———
# Works everywhere, no truecolor required
set -g default-terminal "screen-256color"
set -g history-limit 10000

# ——— Monokai Colors (256-color palette) ———
# ——— Monokai Theme (Clean: Blue Session, Gray Time) ———

# Status bar (dark background)
set -g status-style bg=colour235,fg=colour231

# Pane borders: subtle inactive, bold orange active
set -g pane-border-style fg=colour238
set -g pane-active-border-style fg=colour166,bold

# Messages (e.g., display-message)
set -g message-style bg=colour235,fg=colour166,bold

# Copy mode: highlight in orange
setw -g mode-style bg=colour166,fg=colour16

# ——— Status Bar Colors ———
# Session name: BLUE background, black text
set -g status-left '#[bg=colour110,fg=colour16] #S |'
#set -g status-left '#[bg=colour110,fg=colour16] #S | #[default]'

# Time/date: Orange background, near-black text
set -g status-right '#[bg=colour166,fg=colour16]%H:%M | %d-%b'


# Window tabs
setw -g window-status-format '#[fg=colour240]#I:#W'
setw -g window-status-current-format '#[fg=colour110,bold]#I:#W'

#-------------------------------------------

# lets you resize windows with arrows
bind-key -r Up resize-pane -U 
bind-key -r Down resize-pane -D 
bind-key -r Left resize-pane -L
bind-key -r Right resize-pane -R

bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# Search mode VI (default is emac)
set-window-option -g mode-keys vi

# --------PLUGINS-----------
# list of plugins
#set -g @plugin 'tmux-plugins/tmp'

# Initialize TMUX plugin manager
#run '~/.tmux/plugins/tpm/tpm'
# --------------------------

# copy and paste
bind P paste-buffer
bind-key -T copy-mode-vi v send-keys -X begin-selection
#bind-key -T copy-mode-vi y send-keys -X copy-selection
bind-key -T copy-mode-vi r send-keys -X rectangle-toggle

# Fo binding 'y' to copy and exiting selection mode - Linux
# bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -sel clip -i'

# For binding 'y' to copy and exiting selection mode puts in Mac buffer - Mac
bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'pbcopy'

# For binding 'Enter' to copy and not leave selection mode
bind-key -T copy-mode-vi Enter send-keys -X copy-pipe 'xclip -sel clip -i' '\;' send -X clear-selection

# ----- USEAGE example - Linux (or Mac with xclip installed -----
# view tmux paste buffer: ctrl-a =
# into copy mode: ctrl-a [
# select text: v 
# copy: ctrl-a y
# then, in tmux can go to another vim session, go into insert mode and:
# ctrl-a ]
# -------------------------

# quality of life stuff (IPPsec)
set -g history-limit 10000
set -g allow-rename off

# Join windows
#bind-key j command-prompt -p "join pane from:"  "join-pane -s '%%'"
#bind-key s command-prompt -p "send pane to:"  "join-pane -t '%%'"

# type prefix+alt+shift+p to run
# saves everything in pane as a log
#run-shell /opt/tmux-logging/logging.tmux

```
