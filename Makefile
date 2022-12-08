update_dotfiles:
	grep -v "gitoken" ~/.bashrc > ./bash/.bashrc
	cp ~/.bash_profile ./bash
	cp -r ~/.config/nvim .
