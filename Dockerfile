# build
# docker build --tag uryyyyyyy/ubuntu-nodejs-yarn:0.1.0 ./

# run
# docker run --rm uryyyyyyy/ubuntu-nodejs-yarn:0.1.0 node -v
# docker run --rm uryyyyyyy/ubuntu-nodejs-yarn:0.1.0 yarn version

FROM ubuntu:16.04

RUN apt update
RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt install -y nodejs

# yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install -y yarn

# chromium
RUN apt install -y chromium-browser
