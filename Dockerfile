# Docker file to create a local Docker container for Google Chrome
FROM ubuntu:14.04
MAINTAINER Kanti Jadia

# debconf to be non-interactive
ENV DEBIAN_FRONTEND noninteractive

# Repository info up to date 
#RUN apt-get update

# Install wget 
RUN apt-get install -y wget

# Get Chrome
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update
RUN apt-get install -y google-chrome-stable

# Add the Chrome user that will run the browser
RUN adduser --disabled-password --gecos "Chrome User" --uid 500 chrome 
RUN echo "chrome ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/chrome  
RUN chmod 0440 /etc/sudoers.d/chrome  
RUN export uid=500 gid=500  

USER chrome
ENV HOME /home/chrome
CMD /usr/bin/google-chrome



