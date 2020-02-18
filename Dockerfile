FROM golang:alpine
ADD . /app
WORKDIR /app
EXPOSE 8080
ENTRYPOINT pwd && go run main.go