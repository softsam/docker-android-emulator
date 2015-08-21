FROM softsam/android:latest

MAINTAINER softsam

# Install dependencies for emulator
RUN echo y | android update sdk --no-ui --all -t `android list sdk --all|grep "SDK Platform Android 5.0.1, API 21"|awk -F'[^0-9]*' '{print $2}'` && \
    echo y | android update sdk --no-ui --all --filter sys-img-armeabi-v7a-android-21 --force && \
    echo y | android update sdk --no-ui --all --filter sys-img-x86-android-21 --force

RUN echo n | android create avd --force -n "x86" -t android-21 --abi default/x86
RUN echo n | android create avd --force -n "arm" -t android-21 --abi default/armeabi-v7a
