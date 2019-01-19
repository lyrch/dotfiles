tmux attach -t base || tmux new \; \
 send-keys 'irssi' C-m \; \
 split-window -v \; \
 send-keys 'task' C-m \; \
 split-window -h \; \
 send-keys 'pianobar' C-m \;
