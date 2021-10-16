FROM python:3
MAINTAINER "Derilinx Ltd"

# Update & Dependencies
#RUN apk add --update python py-pip git

# Clone CubeVisualizer files into the docker container
RUN git clone https://github.com/LOSD-Data/CubeVisualizer.git /var/www/CubeVisualizer

# Copy config file
COPY config.js /var/www/CubeVisualizer/js/config.js

WORKDIR /var/www/CubeVisualizer

# Configure port
EXPOSE  8000

# Run python SimpleHTTPServer
CMD cd /var/www/CubeVisualizer/ && python -m http.server 8000
