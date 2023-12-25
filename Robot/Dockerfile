FROM ros:iron-ros-core

RUN apt-get update && apt-get install -y openssh-server
RUN useradd -rm -d /home/sshuser -s /bin/bash -g root -G sudo -u 1000 sshuser
RUN echo 'sshuser:robot' | chpasswd
RUN mkdir /var/run/sshd
RUN . /opt/ros/iron/setup.bash
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]