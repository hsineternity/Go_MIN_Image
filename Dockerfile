FROM golang:alpine

ENV GO111MODULE=on
ENV PORT=9000
WORKDIR /app/server

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
RUN cd /app/server && go build -o server
CMD ["./server"]
