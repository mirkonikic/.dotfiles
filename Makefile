update_dotfiles:
	grep -v "gitoken" ~/.bashrc > ./bash/.bashrc
	cp ~/.bash_profile ./bash/
	cp ~/.tmux.conf ./tmux/
	cp -r ~/.config/nvim .
