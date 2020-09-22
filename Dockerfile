FROM alpine:latest
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

RUN apk --no-cache add python3 py3-paho-mqtt py3-pip && pip3 install pyModbusTCP && \
 echo "msr23ctl:x:1000:" >> /etc/group && echo "msr23ctl:x:1000:1000:msr23ctl:/:/sbin/nologin" >> /etc/passwd
COPY msr23ctl /usr/bin/msr23ctl
USER msr23ctl

ENTRYPOINT ["/usr/bin/msr23ctl"]
