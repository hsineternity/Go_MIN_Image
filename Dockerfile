FROM golang:1.14

WORKDIR /hello
COPY . /hello
RUN go build 
CMD ["./hello"]
