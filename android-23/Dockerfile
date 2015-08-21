FROM softsam/android:latest

MAINTAINER softsam

# Install dependencies for emulator
RUN echo y | android update sdk --no-ui --all -t `android list sdk --all|grep "SDK Platform Android 6.0, API 23"|awk -F'[^0-9]*' '{print $2}'` && \
    echo y | android update sdk --no-ui --all --filter sys-img-armeabi-v7a-android-23 --force && \
    echo y | android update sdk --no-ui --all --filter sys-img-x86-android-23 --force

RUN echo n | android create avd --force -n "x86" -t android-23 --abi default/x86
RUN echo n | android create avd --force -n "arm" -t android-23 --abi default/armeabi-v7a
