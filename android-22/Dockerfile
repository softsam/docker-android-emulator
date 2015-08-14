FROM softsam/android:latest

MAINTAINER softsam

# Install dependencies for emulator
RUN echo y | android update sdk --no-ui --all -t `android list sdk --all|grep "SDK Platform Android 5.1.1, API 22"|awk -F'[^0-9]*' '{print $2}'` && \
    echo y | android update sdk --no-ui --all --filter sys-img-armeabi-v7a-android-22 --force && \
    echo y | android update sdk --no-ui --all --filter sys-img-x86_64-android-22 --force

RUN echo n | android create avd --force -n "x86" -t android-22 --abi default/x86_64
RUN echo n | android create avd --force -n "arm" -t android-22 --abi default/armeabi-v7a
