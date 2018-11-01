FROM golang

RUN go get -d -v github.com/google/subcommands
RUN go get -d -v github.com/cloudfoundry/libbuildpack

RUN cd /go/src/github.com/cloudfoundry/libbuildpack/packager/buildpack-packager && go install

WORKDIR /go/src/app