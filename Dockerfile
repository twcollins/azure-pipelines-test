FROM golang:alpine
RUN echo "AZ Pipelines playground.."
ADD . /app
WORKDIR /app
EXPOSE 8080
ENTRYPOINT go run main.go