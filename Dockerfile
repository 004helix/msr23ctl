FROM alpine:latest
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

RUN apk --no-cache add python3 py3-paho-mqtt py3-pip && pip3 install pyModbusTCP
COPY msr23ctl /usr/bin/msr23ctl

ENTRYPOINT ["/usr/bin/msr23ctl"]
