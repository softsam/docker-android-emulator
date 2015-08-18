# docker-android-emulator
Run Android emulator

## Built with
- latest debian
- openjdk 7
- Android SDK 24.3.4
- Android APIs

## Running the emulator
This repository provides emulator images for different SDK. Both ARM and X86 architectures are available. By default, the ARM architecture is run.

Running the emulator for Android 16 (ARM):

    docker run -d --name android softsam/android-16

To run the X86 architecture, you will need to have kvm installed on the host machine, and you will have to run the image with the __--privileged__ option.
Running the emulator for Android 16 (X86):

    docker run -d --privileged -v /dev/kvm:/dev/kvm -e ANDROID_ARCH="x86" --name android softsam/android-16

All the emulator expose the port 5555 of ADB, and can be used by any other container (or the host).
The emulator also exposes the port 5900, and you can connect to it with a VNC client.
