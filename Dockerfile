FROM ubuntu:trusty

MAINTAINER Brian Vanderbusch <brian@hackerhappyhour.com>

LABEL com.hackerhappyhour.category="developer-tools" \
	com.hackerhappyhour.version="1.0.0-prealpha" 

USER root

RUN apt-get update && apt-get install -y \

	vim \

	tmux \

	zsh \

RUN mkdir -p /code

WORKDIR /code

CMD ["zsh"]



