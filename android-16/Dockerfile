FROM softsam/android:latest

MAINTAINER softsam

# Install dependencies for emulator
RUN echo y | android update sdk --no-ui --all -t `android list sdk --all|grep "SDK Platform Android 4.1.2, API 16"|awk -F'[^0-9]*' '{print $2}'` && \
    echo y | android update sdk --no-ui --all --filter sys-img-armeabi-v7a-android-16 --force && \
    echo y | android update sdk --no-ui --all --filter sys-img-x86-android-16 --force

RUN echo n | android create avd --force -n "x86" -t android-16 --abi default/x86
RUN echo n | android create avd --force -n "arm" -t android-16 --abi default/armeabi-v7a
