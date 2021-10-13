FROM quay.io/prometheus/busybox:latest

RUN Make build

RUN sudo apt-get install build-essential

ADD prometheus-example-app /bin/prometheus-example-app

ENTRYPOINT ["/bin/prometheus-example-app"]
