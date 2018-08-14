#sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
#sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
#sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
#sudo cp `dirname "$0"`/vscode.repo /etc/yum.repos.d/vscode.repo
yes | sudo dnf copr enable konimex/neofetch

sudo dnf install \
	git make gcc gcc-c++ autoconf cmake ccache \
	xdg-user-dirs xdg-utils tar mpd ncmpcpp code \
	weechat mutt neovim xorg-x11-drv-libinput bzip2 \
	neofetch screenfetch w3m wget firefox \
	xorg-x11-server-{Xorg,common,utils} \
	xorg-x11-{utils,xauth,xinit,xkb-utils,fonts-misc,font-utils,proto-devel} \
	libconfig{,-devel} cairo{,-devel} \
	pango{,-devel} gdk-pixbuf2{,-devel} \
	alsa-lib{,-devel} xcb-util{,-devel} \
	xcb-util-wm{,-devel} wireless-tools{,-devel} \
	libxkbcommon{,-devel} libxcb{,-devel} \
	python2{,-devel} xcb-proto \
	jsoncpp{,-devel} xcb-util-image{,-devel} \
	xcb-util-wm{,-devel} xcb-util-cursor{,-devel} \
	xcb-util-xrm{,-devel} pulseaudio-libs{,-devel} \
	libmpdclient{,-devel} libcurl{,-devel} \
	imlib2{,-devel} libexif{,-devel} \
	giflib{,-devel}
