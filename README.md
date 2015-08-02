# Docker - proof of concept
**How should you use it?**
To use this sample you should follow the steps described below:
1. First you must to clone this repo.
2. To create the image you need go to root project directory (cd <cloned docker-php-poc path>) and run: 
```sh 
  docker build -t php-poc:1.0 .
```
3. Now, to create the container instance you should run the command below:
```sh 
  docker run -d -p 8081:80 -e CONTAINER_NUMBER=1 php-poc:1.0
```
4. Finally open your favorite web browser and go to http://localhost:8081
