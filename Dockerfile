FROM golang

ADD . /go/src/github.com/llamashoes/k8s-demo

RUN go install github.com/llamashoes/k8s-demo

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
