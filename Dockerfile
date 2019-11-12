FROM ubuntu:16.04

# Requirements
RUN apt-get update && apt-get install -y \
	wget \
	gconf2 \
	libnotify4 \
	libnss3 \
	libappindicator1 \
	libxss1 \
	libasound2
# Helpers
RUN apt-get install -y \
	vim 
WORKDIR /home/ubuntu
COPY install.sh . 
RUN chmod +x install.sh
RUN ./install.sh
CMD /usr/local/bin/pomodoneapp
