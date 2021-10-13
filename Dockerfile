FROM quay.io/prometheus/busybox:latest

RUN apt-get install build-essential

RUN Make build

ADD prometheus-example-app /bin/prometheus-example-app

ENTRYPOINT ["/bin/prometheus-example-app"]
