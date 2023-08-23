FROM ubuntu:18.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt install -y \ 
    gawk wget git-core diffstat unzip texinfo gcc-multilib \ 
    build-essential chrpath socat cpio python python3 \ 
    python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 \
    libegl1-mesa libsdl1.2-dev pylint3 xterm g++ libstdc++6 lib32stdc++6 libpulse-dev \ 
    libevent-dev ninja-build rpm2cpio libswitch-perl python-serial libssl-dev

RUN wget -O gn http://storage.googleapis.com/chromiumgn/3fd43e5e0dcc674f0a0c004ec290d04bb2e1c60e

# These packages are not needed for the Yocto build but in this file below.
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
    locales sudo

# Set the locale to en_US.UTF-8, because the Yocto build fails without any locale set.
RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8


RUN DEBIAN_FRONTEND=noninteractive apt install -y android-tools-adb android-tools-fastboot
