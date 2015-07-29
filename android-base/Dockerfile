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
