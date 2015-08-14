FROM softsam/android:latest

MAINTAINER softsam

# Install dependencies for emulator
RUN echo y | android update sdk --no-ui --all -t `android list sdk --all|grep "SDK Platform Android 4.2.2, API 17"|awk -F'[^0-9]*' '{print $2}'` && \
    echo y | android update sdk --no-ui --all --filter sys-img-armeabi-v7a-android-17 --force && \
    echo y | android update sdk --no-ui --all --filter sys-img-x86-android-17 --force

RUN echo n | android create avd --force -n "x86" -t android-17 --abi default/x86
RUN echo n | android create avd --force -n "arm" -t android-17 --abi default/armeabi-v7a
