# docker-chrome
Install Google Chrome in a Docker container

#To run the browser
docker run -it  -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix docker-chrome google-chrome
