FROM kimba74/apache2
MAINTAINER Steffen Krause <steffen.krause@soabridge.com>

# Setting user
USER root

# Installing node.js
RUN curl -sL https://deb.nodesource.com/setup | bash - \
    && apt-get update \
    && apt-get install -y nodejs build-essential \
    && apt-get clean

# Installing socket.io
RUN npm install socket.io


