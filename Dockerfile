FROM vladikoff/fxa-slim-image:latest

MAINTAINER michielbdejong <michiel@mozilla.com>

RUN apt-get update -y && apt-get install -y golang-go mercurial && apt-get clean

COPY . /home/fxa/fxa-content-server
WORKDIR /home/fxa/fxa-content-server

RUN make

CMD npm start

# Expose ports
EXPOSE 9010
EXPOSE 9011
