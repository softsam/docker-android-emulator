# Android emulator API 23
Run Android emulator with API 23

## Built with
- based on sofsam/android
- Android API 23

## Running the emulator
Running the emulator for Android 23:

    docker run -d --name android softsam/android-23

The emulator exposes the port 5555 of ADB, and can be used by any other container (or the host).
The emulator also exposes the port 5900, and you can connect to it with a VNC client on localhost if you run the following command:

    docker run -d -p 5900:5900 --name android softsam/android-23
