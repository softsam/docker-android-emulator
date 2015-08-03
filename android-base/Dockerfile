FROM softsam/adb:latest

MAINTAINER softsam

# Install all dependencies
RUN apt-get update && \
    apt-get install -y wget redir && \
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

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
