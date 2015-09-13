FROM ubuntu:trusty

MAINTAINER Brian Vanderbusch <brian@hackerhappyhour.com>

LABEL com.hackerhappyhour.category="developer-tools" \
	com.hackerhappyhour.version="1.0.0-prealpha" 

USER root

# install base tools used for development
RUN apt-get update && apt-get install -y \

	vim \

	tmux \

	zsh \

	git \

	python \

	wget \

	curl

# install and setup pip for powerline usage/install
RUN wget https://bootstrap.pypa.io/get-pip.py && \

	python get-pip.py && \

	pip install powerline-status


CMD ["zsh"]



