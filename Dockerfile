FROM kimba74/apache2
MAINTAINER Steffen Krause <steffen.krause@soabridge.com>

# Setting user
USER root

# Installing node.js
RUN curl -sL https://deb.nodesource.com/setup | bash - \
 && apt-get update \
 && apt-get install -y nodejs build-essential \
 && apt-get clean

# Download and unpack the reveal.js release
RUN rm -fr html \
 && curl https://codeload.github.com/hakimel/reveal.js/tar.gz/3.1.0 | tar -xz \
 && mv reveal.js-3.1.0 html

# Setting workdir to html content directory
WORKDIR html

# Installing node.js packages specified in package.json
RUN npm install

# Setting descriptive labels for package
LABEL com.soabridge.docker.reveal.version="3.1.0"
