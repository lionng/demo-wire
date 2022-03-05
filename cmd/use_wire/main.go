package main

import (
	"github.com/lionng/demo-wire/internal/app"
)

func main() {
	e := app.InitializeEvent()

	e.Start()
}
