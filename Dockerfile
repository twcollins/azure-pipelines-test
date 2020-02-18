FROM golang:alpine
ADD . /app
WORKDIR /app
EXPOSE 8080
ENTRYPOINT go run main.go