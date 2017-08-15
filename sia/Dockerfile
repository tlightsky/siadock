FROM golang:1.8.3-alpine3.6

RUN apk update && \
    apk upgrade && \
    apk add git make socat

RUN go-wrapper download -u github.com/NebulousLabs/Sia/...  # "go get -d -v ./..."

WORKDIR /go/src/github.com/NebulousLabs/Sia

RUN git checkout -b v1.3.0 tags/v1.3.0
RUN make release-std

EXPOSE 19980

ENTRYPOINT socat tcp-listen:19980,reuseaddr,fork tcp:localhost:9980 & siad --modules=cgtrw --sia-directory=/var/sia-data