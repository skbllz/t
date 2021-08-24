# install.ks

# ANACONDA {{{

####################################################################### SERVICES

services --enable=sshd,NetworkManager,chronyd

############################################################## GRAPHICAL | TEXT

graphical

############################################## SYSTEM AUTHORIZATION INFORMATION

authselect --enableshadow --passalgo=sha512

######################################################################### REPOS

url                               --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-$releasever&arch=$basearch
repo --name=Fedora                --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-$releasever&arch=$basearch
repo --name=FedoraUpdates         --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f$releasever&arch=$basearch

####################################################################### NETWORK

network --hostname=skbllz

###################################################################### FIREWALL

firewall --disabled

####################################################################### SELinux

selinux --disabled

###################################################################### TIMEZONE

timezone Europe/Lisbon --isUtc --ntpservers=server 2.pt.pool.ntp.org server 

################################################################# ROOT PASSWORD



######################################################################## USER t

user --groups=wheel --name=t 

############################################################### KEYBOARD LAYOUT

keyboard --vckeymap=pt --xlayouts=pt --switch=caps:swapescape

############################################################### SYSTEM LANGUAGE

lang en_US.UTF-8

############################################################ AFTER INSTALLATION

poweroff

############################################### SYSTEM BOOTLOADER CONFIGURATION

bootloader --location=mbr --timeout=4 --boot-drive=sda

#################################################################### IGNOREDISK

ignoredisk --only-use=sda

################################################ PARTITION CLEARING INFORMATION

clearpart --none

#################################################### DISK PARTITION INFORMATION

part /boot --fstype=xfs --onpart=/dev/disk/by-id/ata-KINGSTON_SV300S37A240G_50026B724306194E-part5 --size=1 --grow
part /opt  --fstype=xfs --onpart=/dev/disk/by-id/ata-KINGSTON_SV300S37A240G_50026B724306194E-part6 --size=1 --grow
part /     --fstype=xfs --onpart=/dev/disk/by-id/ata-KINGSTON_SV300S37A240G_50026B724306194E-part7 --size=1 --grow

# }}}

# POST INSTALLATION {{{

########################################################################## POST

%post --logfile LOG

######################################################################### FSTAB

mkdir /Media

echo '

/dev/sda2        /Media     xfs  defaults 0 0
/dev/sda3        /home      xfs  defaults 0 0
/dev/sda8        swap       swap defaults 0 0 ' >> /etc/fstab

mount -a

########################################################################### ZSH

chsh -s /usr/bin/zsh t
chsh -s /usr/bin/zsh root
cp /home/t/.zshrc /root

######################################################################### SNAPD

 ln -s /var/lib/snapd/snap /snap

####################################################################### GARBAGE

rm -rf /root/.ba*
rm -rf /root/.cshrc
rm -rf /root/.tcshrc
rm -rf /usr/share/icons/HighContrast/icon-theme.cache

##################################################################### NOMODESET

sed -i 's/nomodeset//g' /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-install /dev/sda

########################################################################### END

%end

# }}}

# PACKAGES {{{

%packages --excludedocs

@core                           # Smallest possible installation
alsa-firmware                   # Firmware for several ALSA-supported sound cards
chrony 				                  # An NTP client/server
dbus-x11                        # X11-requiring add-ons for D-BUS
dmenu      			                # Generic menu for X
firefox                         # Mozilla Firefox Web browser
glx-utils                       # GLX utilities
i3 															# Improved tiling window manager
i3status 												# Status bar generator for i3bar, dzen2, xmobar or similar programs
i3lock 													# Simple X display locker like slock
iwl5000-firmware                # Firmware for Intel® PRO/Wireless 5000 A/G/N network adaptors
mesa-dri-drivers                # Mesa-based DRI drivers
nautilus                        # File manager for GNOME File manager for GNOME
neovim 													# Vim-fork focused on extensibility and agility
network-manager-applet          # A network control and status applet for NetworkManager
NetworkManager-wifi             # Wifi plugin for NetworkManager
pavucontrol                     # Volume control for PulseAudio
python3-neovim									# Python client to Neovim
rxvt-unicode                    # 256 color version of rxvt-unicode
snapd 													# A transactional software package manager
util-linux-user                 # libuser based util-linux utilities
wireless-tools-devel            # Development headers for the wireless-tools package
xorg-x11-drv-ati                # AMD/ATI video driver
xorg-x11-server-Xorg            # Xorg X11 X server
xorg-x11-utils                  # Xorg X11 X client utilities
xorg-x11-xauth                  # Xorg X11 X authority utilities
xorg-x11-xinit                  # Xorg X11 X Window System xinit startup scripts
xrandr                          # Commandline utility to change output properties
xrdb                            # X server resource database utility
zsh                             # Powerful interactive shell

####################################################################### EXCLUDE

-selinux-policy-targeted
-plymouth

########################################################################### END

%end

# }}}
