FROM centos:latest

RUN yum install net-tools -y

RUN tum install openssh-server -y

RUN ssh-keygen -A

RUN yum install passwd -y

RUN echo ankush | passwd root --stdin

CMD /usr/sbin/sshd
