FROM centos/systemd

RUN yum -y install openssh-server openssh-clients sudo; yum clean all; systemctl enable sshd.service
RUN echo 'root:docker' | chpasswd

EXPOSE 22

CMD ["/usr/sbin/init"]
