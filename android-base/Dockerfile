FROM debian:latest

MAINTAINER softsam

# Install all dependencies
RUN apt-get update && \
    apt-get install -y wget openjdk-7-jre-headless libc6-i386 lib32stdc++6 redir && \
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install android tools + sdk
ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH $PATH:${ANDROID_HOME}/tools:$ANDROID_HOME/platform-tools

RUN wget -qO- "http://dl.google.com/android/android-sdk_r24.3.3-linux.tgz" | tar -zx -C /opt && \
    echo y | android update sdk --no-ui --all --filter platform-tools --force

# Expose android port
EXPOSE 5555
# VNC port
EXPOSE 5900

# Needed to be able to run VNC - bug of Android SDK
RUN mkdir ${ANDROID_HOME}/tools/keymaps && touch ${ANDROID_HOME}/tools/keymaps/en-us

# Add script
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
