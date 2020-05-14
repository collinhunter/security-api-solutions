FROM ubuntu:xenial

# Install core components
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get dist-upgrade -y && apt-get autoremove -y && apt-get clean
RUN apt-get install -y sudo git python3 apt-utils

RUN sudo pip3 install requests requests-futures pymisp
RUN adduser www-data sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

#Run misp-graph-security
ADD run.sh /run.sh
RUN sudo chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
