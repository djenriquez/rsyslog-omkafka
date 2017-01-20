FROM centos:7

RUN yum-config-manager --add-repo http://rpms.adiscon.com/v8-stable/epel-6/x86_64 && \
    yum install --nogpg -y \
    rsyslog \
    rsyslog-kafka && \
    rm /etc/rsyslog.d/listen.conf

ADD config/ /etc/rsyslog.d/

CMD rsyslogd -N1 && rsyslogd