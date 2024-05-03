# syncthing:
# Add the release PGP keys:
sudo mkdir -p /etc/apt/keyrings
sudo curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
# Add the "stable" channel to your APT sources:
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
# Add the "candidate" channel to your APT sources:
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing candidate" | sudo tee /etc/apt/sources.list.d/syncthing.list
# Update and install syncthing:
sudo apt-get update
sudo apt-get -y install syncthing

# telegram:
sudo snap install telegram-desktop

# Brave:
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt-get -y install brave-browser

# spotify:
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get -y install spotify-client


# Various things:
sudo apt-get -y install synaptic
sudo apt-get -y install gnome-sushi
# sudo apt install -y ubuntu-restricted-extras
# sudo apt-get install -y gstreamer1.0-gtk3 gstreamer1.0-pulseaudio gstreamer1.0-libav
sudo apt-get -y install fuse
sudo apt-get -y install putty
sudo apt-get -y install ffmpeg
sudo apt-get -y install gimp
sudo apt-get -y install htop
sudo apt-get -y install inkscape
sudo apt-get -y install bleachbit
sudo apt-get -y install ffmpeg
sudo apt-get -y install smartmontools
# Need to add clamAV

# Various snaps:
sudo snap install vlc
sudo snap install librepcb
sudo snap install stellarium-daily
sudo snap install freecad
sudo snap install librepcb
sudo snap install hugo

# install Recoll:
sudo add-apt-repository ppa:recoll-backports/recoll-1.15-on
sudo apt-get update
sudo apt-get install recoll

# # Install Chirp:
# sudo apt-add-repository ppa:dansmith/chirp-snapshots
# sudo apt-get update
# sudo apt-get install chirp-daily


# Download prusa3d
wget -P $HOME/Downloads/  https://cdn.prusa3d.com/downloads/drivers/prusa3d_linux_2_7_1.zip

# pycharm
wget -P $HOME/Downloads/ https://download.jetbrains.com/python/pycharm-community-2023.3.2.tar.gz

# VNC-Viewer
wget -P $HOME/Downloads/ https://downloads.realvnc.com/download/file/viewer.files/VNC-Viewer-7.8.0-Linux-x64.deb

# yt-dlp
sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

# Audacity
wget -P $HOME/Downloads/ https://github.com/audacity/audacity/releases/download/Audacity-3.4.2/audacity-linux-3.4.2-x64.AppImage

# wget -P $HOME/Downloads/  https://download.librepcb.org/releases/1.0.0/librepcb-1.0.0-linux-x86_64.AppImage

# Create Python virtual environment in the user's home directory
python3 -m venv ~/pyenv

# Activate the virtual environment
source ~/pyenv/bin/activate

# Installing python packages
pip install numpy
pip install pandas

# Deactivate the virtual environment and return to the global environment
deactivate

echo "Completed"
