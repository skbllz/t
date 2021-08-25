# post-install.zsh
# aug 21
 
# dnf post install packages
dnf_post() {
	# rpmfusion
	sudo dnf install -y  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
  sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
	sudo dnf update -y
	# packages
	sudo dnf install -y `cat ~/.zsh/data/* | grep -v '#'`
}

# optional
./install/docker.pos
./install/freetube.pos
./install/i3pystatus.pos
./install/neovim.pos
./install/youtube-dl.pos
./install/ytfzf.pos

exit 0
