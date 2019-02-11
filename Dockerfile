FROM phusion/baseimage

COPY bash.bashrc /etc/


RUN rm -f /etc/service/sshd/down && \
	echo root:password | chpasswd && \
	apt-get update && \
	apt-get install rsyslog -y


COPY .bashrc /root/
COPY bash.conf /etc/rsyslog.d/

COPY sshd_config /etc/ssh/
EXPOSE 22

RUN service rsyslog restart

