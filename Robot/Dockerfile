# default ROS distribution for the image
# can be changed in the docker-compose YAML
ARG ROS_DISTRO=iron

########################################
#     Docker image for Valera robot    #
########################################

FROM ros:${ROS_DISTRO}-ros-base

RUN apt-get update && apt-get install -y openssh-server && \
    useradd -rm -d /home/sshuser -s /bin/bash -g root -G sudo -u 1000 sshuser
RUN echo 'sshuser:robot' | chpasswd
RUN mkdir /var/run/sshd

SHELL ["/bin/bash", "-c"]
RUN source /opt/ros/${ROS_DISTRO}/setup.bash

EXPOSE 22
CMD /usr/sbin/sshd -D