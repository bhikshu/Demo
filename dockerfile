FROM ubuntu 
MAINTAINER bhikshalarao.7y8@gmail.com 

RUN apt-get update 
RUN apt-get install –y nginx 
CMD [“echo”,”Image created”]
