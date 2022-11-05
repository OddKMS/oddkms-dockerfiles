FROM ubuntu:20.04

ADD install.sh /tmp/install.sh
RUN sh -e /tmp/install.sh

ADD run.sh /
RUN chmod +x /run.sh

CMD["/run.sh"]
