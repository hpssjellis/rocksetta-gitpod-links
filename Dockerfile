FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
    && apt-get install -y default-jdk lib32ncurses5 lib32stdc++6 \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*



#RUN wget https://developer.android.com/studio/#downloads \
#   && unzip sdk-tools-linux-3859397.zip

USER gitpod
# Apply user-specific settings
# ENV ...

# Give back control
USER root
