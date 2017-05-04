FROM golang

ADD . /go/src/github.com/lwander/k8s-demo

RUN go install github.com/lwander/k8s-demo

ADD ./content /content
EXPOSE 8000

ENTRYPOINT /go/bin/k8s-demo
