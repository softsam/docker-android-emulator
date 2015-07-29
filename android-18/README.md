# Android emulator API 18
Run Android emulator with API 18

## Built with
- based on sofsam/android
- Android API 18

## Running the emulator
Running the emulator for Android 18:

    docker run -d --name android softsam/android-18

The emulator exposes the port 5555 of ADB, and can be used by any other container (or the host).
The emulator also exposes the port 5900, and you can connect to it with a VNC client on localhost if you run the following command:

    docker run -d -p 5900:5900 --name android softsam/android-18
