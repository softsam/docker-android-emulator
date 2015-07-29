FROM softsam/android

MAINTAINER softsam

# Install dependencies for emulator
RUN echo y | android update sdk --no-ui --all -t `android list sdk --all|grep "SDK Platform Android 4.1.2, API 16"|awk -F'[^0-9]*' '{print $2}'` && \
    echo y | android update sdk --no-ui --all -t `android list sdk --all|grep "ARM EABI v7a System Image, Android API 16"|awk -F'[^0-9]*' '{print $2}'`
    
RUN echo n | android create avd --force -n "ANDROID" -t android-16
