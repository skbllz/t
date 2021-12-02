#!/usr/bin/zsh
# post-install.zsh
# aug 21

source ~/.zsh/functions.zsh

# directories
DNF=~/.zsh/install/post-install/dnf-packages
OPT=~/.zsh/install/post-install/optional-packages
RPMFUSION=$(rpm -qa | grep rpmfusion)

# dnf post install packages
dnf_post() {
	# rpmfusion
	if [[ -z $RPMFUSION ]]; then
		sudo dnf install -y  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
		sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
	fi
	#update
	sudo dnf update -y
	# packages
	dnf_install
}

dnf_post

# optional
$OPT/docker.pos
$OPT/freetube.pos
$OPT/i3pystatus.pos
$OPT/neovim.pos
$OPT/youtube-dl.pos
$OPT/ytfzf.pos

# wireshark
sudo usermod -aG wireshark $USER
# initialize sensors
sudo sensors-detect --auto

exit 0
