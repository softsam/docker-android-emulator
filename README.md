# docker-android-emulator
Run Android emulator

## Built with
- latest debian
- openjdk 7
- Android SDK 24.3.3
- Android APIs

## Running the emulator
This repository provides emulator images for different SDK.

Running the emulator for Android 16:

    docker run -d --name android softsam/android-16

All the emulator expose the port 5555 of ADB, and can be used by any other container (or the host).
The emulator also exposes the port 5900, and you can connect to it with a VNC client.