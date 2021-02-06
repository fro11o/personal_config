# Toggle mouse on
bind m \
    set -g mouse on \;\
    display 'Mouse: ON'

# Toggle mouse off
bind M \
    set -g mode-mouse off \;\
    display 'Mouse: OFF'

# History-limit
set -g history-limit 30000

# Use 256 colors
set -g default-terminal "screen-256color"

bind -n C-v run-shell "tmux set-buffer \"$(xclip -o)\"; tmux paste-buffer" \; display-message "Pasted"
bind -n C-s run "tmux save-buffer - | xclip -selection clipboard > /dev/null" \; display-message "Copied"

# default mouse on
set -g mouse on

# Start windows at 1, not 0
set -g base-index 1

# <alt>+number could switch window
bind-key -n M-1 select-window -t 1
bind-key -n M-2 select-window -t 2
bind-key -n M-3 select-window -t 3
bind-key -n M-4 select-window -t 4
bind-key -n M-5 select-window -t 5
bind-key -n M-6 select-window -t 6
bind-key -n M-7 select-window -t 7
bind-key -n M-8 select-window -t 8
bind-key -n M-9 select-window -t 9
bind-key -n M-0 select-window -t 10

# Use Alt-vim keys without prefix key to switch panes
bind-key -n M-h select-pane -L
bind-key -n M-j select-pane -D
bind-key -n M-k select-pane -U
bind-key -n M-l select-pane -R

# cancel esc delay
set -s escape-time 0
