
exit

# # https://snapcraft.io/docs/installing-snap-on-arch-linux

cd /-/aur || return

git clone https://aur.archlinux.org/snapd.git
cd snapd || return
makepkg -si

sudo systemctl enable --now snapd.socket

### enable classic snap support
sudo ln -s /var/lib/snapd/snap /snap

#

sudo snap install hello-world

hello-world

#

sudo snap install figma-linux
sudo snap install insomnia

### adb

sudo snap install scrcpy

### webstorm

sudo snap install --classic webstorm

### pycharm

sudo snap install --classic pycharm

echo 'export _JAVA_AWT_WM_NONREPARENTING=1' >> /.bashrc

### wps-office

sudo snap install wps-office
