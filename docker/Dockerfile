FROM ubuntu
MAINTAINER Romin Trani (email@domain.com)
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y nginx
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 8888
# RUN nginx -g "daemon off;"

