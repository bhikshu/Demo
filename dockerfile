FROM ubuntu 
MAINTAINER bhikshalarao.7y8@gmail.com 

RUN apt-get update 
RUN apt-get install nginx -y 
CMD [“echo”,”Image created”]
