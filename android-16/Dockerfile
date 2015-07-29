FROM softsam/android

MAINTAINER softsam

# Install dependencies for emulator
RUN echo y | android update sdk --no-ui --all -t `android list sdk --all|grep "SDK Platform Android 4.1.2, API 16"|awk -F'[^0-9]*' '{print $2}'` && \
    echo y | android update sdk --no-ui --all -t `android list sdk --all|grep "ARM EABI v7a System Image, Android API 16"|awk -F'[^0-9]*' '{print $2}'`
    
# Expose android port
EXPOSE 5555
# VNC port
EXPOSE 5900

RUN echo n | android create avd --force -n "ANDROID" -t android-16

# Needed to be able to run VNC - bug of Android SDK
RUN mkdir ${ANDROID_HOME}/tools/keymaps && touch ${ANDROID_HOME}/tools/keymaps/en-us

# Add script
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
