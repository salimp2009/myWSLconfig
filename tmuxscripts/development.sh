tmux has-session -t development
if [ $? != 0 ]
then
 # Open a new session and detach
	tmux new-session -s development -n nvim -d
	
# We change the director; C-m (Ctrl-M) so tmux pressed Enter key 
	tmux send-keys -t development 'cd ~/developer/rustTest/' C-m
	
# Open nvim
	tmux send-keys -t development 'nvim' C-m
	
#Open a terminal under nvim
	tmux split-window -v -t development
	
# select one of the default layouts in tmux
	tmux select-layout -t development main-horizontal
	
# 2nd window will change to same directory
	tmux send-keys -t development:1.1 'cd ~/developer/rustTest/' C-m
	
# new window with full screen opens at the same directory
	tmux new-window -n console -t development
	tmux send-keys -t development:2 'cd ~/developer/rustTest/' C-m
	
# we want start up session as the 1st session 
	tmux select-window -t development:1 
fi 	
# finally attach our session
tmux attach -t development


# tmux new-session -s development -n editor -d
# tmux send-keys -t development 'cd ~/developer/rustTest/' C-m
# # tmux send-keys -t development 'nvim' C-m
# tmux split-window -v -t development
# tmux select-layout -t development main-horizontal
# tmux send-keys -t development:1.2 'cd ~/developer/rustTest/' C-m
# tmux new-window -n console -t development
# tmux send-keys -t development:2 'cd ~/developer/rustTest/' C-m
# tmux select-window -t development:1
# tmux attach -t development
