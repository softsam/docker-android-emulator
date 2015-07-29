#!/bin/bash

# Detect ip and forward ADB ports outside to outside interface
ip=$(ip addr list eth0|grep "inet "|cut -d' ' -f6|cut -d/ -f1)
#socat tcp-listen:5555,bind=$ip,fork tcp:127.0.0.1:5555 &
redir --laddr=$ip --lport=5555 --caddr=127.0.0.1 --cport=5555 &

# Set up and run emulator
emulator -avd ANDROID -noaudio -no-window -gpu off -verbose -force-32bit