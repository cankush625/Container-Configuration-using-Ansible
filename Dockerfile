FROM centos:centos8

RUN yum install net-tools -y

RUN yum install openssh-server -y

RUN ssh-keygen -A

RUN yum install passwd -y

RUN echo ankush | passwd root --stdin

CMD /usr/sbin/sshd && /bin/sh 
