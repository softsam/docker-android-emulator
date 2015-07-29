# Android emulator API 16
Run Android emulator with API 16

## Built with
- based on sofsam/android
- Android API 16

## Running the emulator
Running the emulator for Android 16:

    docker run -d --name android softsam/android-16

The emulator exposes the port 5555 of ADB, and can be used by any other container (or the host).
