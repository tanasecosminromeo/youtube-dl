FROM debian:jessie
MAINTAINER Cosmin-Romeo TANASE <tanasecosminromeo@gmail.com>

RUN apt-get update && \
    apt-get install -y \
      python \
			libav-tools \ 
			curl

RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
	chmod a+rx /usr/local/bin/youtube-dl
	
VOLUME ["/download"]

ENTRYPOINT ["youtube-dl", "-o", "/download/%(title)s.%(ext)s", "--extract-audio", "--audio-format", "mp3"]
