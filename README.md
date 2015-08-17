# docker-chrome
Install Google Chrome in a Docker container

# Clone the repository to your local machine
git clone https://github.com/jkantihub/docker-chrome

# Build the container using following command in docker-chrome folder
docker build --no-cache -t=docker-chrome . 

#To run the browser , DISPLAY should have "xhost local:" or "xhost +"
docker run -it  -e DISPLAY=$DISPLAY -v=/tmp/.X11-unix:/tmp/.X11-unix docker-chrome google-chrome

# Enjoy Google Chrome in a Docker Container
