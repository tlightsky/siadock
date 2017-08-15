FROM golang:1.8.3-alpine3.6

RUN apk update && \
    apk upgrade && \
    apk add git make build-base

RUN go-wrapper download -u github.com/NebulousLabs/Sia/...
RUN cd /go/src/github.com/NebulousLabs/Sia && \
    git checkout -b v1.3.0 tags/v1.3.0 && \
    make release-std

RUN go-wrapper download -u github.com/minio/minio
RUN go-wrapper download -u github.com/mattn/go-sqlite3

WORKDIR /go/src/github.com/minio/minio

RUN cd /go/src/github.com/minio/minio && \
	git remote add dvstate https://github.com/dvstate/minio.git && \
	git fetch dvstate && \
	git checkout -b sia_integration_v2 dvstate/sia_integration_v2 && \
    make install

EXPOSE 9000
