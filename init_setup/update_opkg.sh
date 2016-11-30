echo "src/gz all http://repo.opkg.net/edison/repo/all" >> /etc/opkg/base-feeds.conf  
echo "src/gz edison http://repo.opkg.net/edison/repo/edison" >> /etc/opkg/base-feeds.conf  
echo "src/gz core2-32 http://repo.opkg.net/edison/repo/core2-32" >> /etc/opkg/base-feeds.conf

opkg update

# Install alsa
opkg install alsa-utils libportaudio2 libasound2 bison espeak alsa-lib-dev alsa-utils-dev alsa-dev python-numpy

# configure alsaudio default device
echo 'pcm.!default sysdefault:Device' > ~/.asoundrc

# install pulse audio libraries
opkg install libpulse0 pulseaudio pulseaudio-dev
