FROM alpine:3.11

MAINTAINER Mihuleac Sergiu <mihuleac.sergiu@gmail.com>

#VOLUME [ “/sys/fs/cgroup” ]
RUN apk update
RUN apk add openvas openvas-config gvmd gvm-libs greenbone-security-assistant ospd-openvas bash 
RUN apk add openrc dos2unix

COPY configgwm.sh /configgwm.sh
COPY configgpg.sh /configpg.sh
COPY start.sh /start.sh
#RUN chmod +x /*.sh
#RUN dos2unix /*.sh

ENTRYPOINT ["/start.sh"]
