package main

import (
	"net/http"
	"os"
)

var requestIPs []string

func main() {
	h := &handler{
		stats: make(map[string]uint64),
		key: []byte(os.Getenv("SECRET")),
	}
	http.HandleFunc("/token", h.token)
	http.HandleFunc("/metrics", h.metrics)
	http.HandleFunc("/health", h.health)
	http.ListenAndServe(":8080", nil)
}
