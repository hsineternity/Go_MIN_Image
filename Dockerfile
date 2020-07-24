FROM golang:alpine AS build-env

ENV GO111MODULE=on
ENV PORT=9000
WORKDIR /src

ADD . .
RUN go mod download

RUN cd /src && GO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app

FROM alpine
WORKDIR /app
COPY --from=build-env /src/app /app/
ENTRYPOINT ./app
