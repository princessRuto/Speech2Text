opkg update

# Install alsa
opkg install alsa-utils libportaudio2 libasound2 bison espeak alsa-lib-dev alsa-utils-dev alsa-dev python-numpy

# configure alsaudio default device
echo 'pcm.!default sysdefault:Device' > ~/.asoundrc

# install pulse audio libraries
opkg install libpulse0 pulseaudio pulseaudio-dev
opkg install python-pip

