set -euo pipefail
                                                                                                                                                                                                                                               │··············
test -n "${TMUX}" || tmux attach -t base || tmux new -s base
tmux send-keys 'irssi' C-m
tmux split-window -v
tmux send-keys 'task' C-m
tmux split-window -h
tmux send-keys 'pianobar' C-m       
