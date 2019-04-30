FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && \
    apt-get install --no-install-recommends -qy \
                        curl libcurl4-gnutls-dev ca-certificates \
                        libgtk2.0-dev libgtk-3-dev mesa-common-dev libgl1-mesa-dev libc6 \
                        unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD ./run-pharo.sh /bin/
ADD ./run-pharo-headless.sh /bin/
RUN chmod +x /bin/run-pharo*.sh
