FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:gophers/archive
RUN apt-get update
RUN apt-get install golang-1.11-go -y
RUN apt-get install libvlc-dev -y

#ENV PATH="${PATH}:/usr/lib/go-1.11/bin"
#ENV GOPATH=/go

#RUN go get -u github.com/go-delve/delve/cmd/dlv
#RUN go get -u github.com/adrg/libvlc-go

ENTRYPOINT ["tail", "-f", "/dev/null"]
