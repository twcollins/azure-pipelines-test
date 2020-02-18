package main

import (
	"fmt"
	"net/http"
)

func HttpFileHandler(response http.ResponseWriter, request *http.Request) {
	http.ServeFile(response, request, "index.html")
}

func main() {
	fmt.Println("Server Started...  ")

	http.HandleFunc("/", HttpFileHandler)

	http.ListenAndServe("0.0.0.0:8080", nil)

}
