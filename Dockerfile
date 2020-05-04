FROM alpine:3.11
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

RUN apk --no-cache add python3 py3-paho-mqtt py3-pip && \
    pip3 install pyModbusTCP && \
    apk --no-cache del py3-pip
COPY msr23ctl /usr/bin/msr23ctl

ENTRYPOINT ["/usr/bin/msr23ctl"]
