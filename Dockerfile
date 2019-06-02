FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
    && apt-get install -y default-jdk \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*



# RUN \
#   wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip \
#   && unzip sdk-tools-linux-3859397.zip
 
 
# ./tools/bin/sdkmanager --list 

# ./tools/bin/sdkmanager --list 

# ./tools/bin/sdkmanager "platforms;android-28" "build-tools;28.0.3" done

# ./tools/bin/sdkmanager --update

 
 
 

USER gitpod
# Apply user-specific settings
# ENV ...

# Give back control
USER root
