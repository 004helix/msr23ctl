FROM alpine:latest
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

COPY msr23ctl /usr/bin/msr23ctl
RUN apk --no-cache add tini python3 py3-paho-mqtt py3-pip && pip3 install pyModbusTCP

ENTRYPOINT ["/sbin/tini", "--", "msr23ctl"]
