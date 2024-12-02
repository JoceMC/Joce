FROM debian:11-slim
RUN apt-get update &&\
  apt-get -y install curl &&\
  curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | bash &&\
  apt-get install pufferpanel &&\
  pufferpanel user add --name admin --email admin@seen.is-a.dev --password admin --admin
WORKDIR etc/pufferpanel
CMD ["/usr/sbin/pufferpanel", "run"]
