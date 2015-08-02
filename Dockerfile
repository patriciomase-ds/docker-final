FROM ubuntu:14.04.2
 
MAINTAINER Sebastian Arrubia <sarrubia@devspark.com>

# Install apache, PHP, and supplimentary programs. curl and lynx-cur are for debugging the container.
#RUN apt-get update && apt-get -y install php5-cli
RUN apt-get -y install php5-cli

#Exposing port 
EXPOSE 80
 
# Copy site into place.
ADD src /opt/myapp
 
# By default, simply start php interpreter on web server mode.
CMD /usr/bin/php -S 0.0.0.0:80 /opt/myapp/index.php