package main

import (
	. "github.com/lionng/demo-wire/internal/app/test_struct"
)

func main() {
	// 不使用wire
	message := NewMessage()
	greeter := NewGreeter(message)
	event := NewEvent(greeter)

	event.Start()
}
