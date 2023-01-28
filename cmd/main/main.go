package main

import (
	"log"

	"github.com/hawk94/gofact/pkg/app"
)

func main() {
	svc := app.NewCatFactService("https://catfact.ninja/fact")
	svc = app.NewLoggingService(svc)

	apiServer := app.NewApiServer(svc)
	log.Fatal(apiServer.Start(":3000"))
}
