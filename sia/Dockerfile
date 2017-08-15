FROM golang:1.8.3-alpine3.6

RUN apk update && \
    apk upgrade && \
    apk add git

RUN go-wrapper download -u github.com/NebulousLabs/Sia/...  # "go get -d -v ./..."

WORKDIR /go/src/github.com/NebulousLabs/Sia

RUN git checkout -b v1.3.0 tags/v1.3.0
RUN apk add make
RUN make release-std

EXPOSE 9980
