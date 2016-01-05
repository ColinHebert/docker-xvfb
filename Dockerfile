FROM debian:jessie

RUN apt-get update \
  && apt-get install -y \
    xvfb \
    x11vnc \
    x11-xserver-utils \
  && rm -rf /var/lib/apt/lists/*

ADD xvfb.sh xvfb.sh

EXPOSE 5900

ENTRYPOINT ["/xvfb.sh"]
CMD ["-screen", "0", "1024x768x24"]
