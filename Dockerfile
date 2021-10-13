FROM quay.io/prometheus/busybox:latest

ADD ./ /bin/prometheus-example-app

ENTRYPOINT ["/bin/prometheus-example-app"]
