package test_struct

type Message string

func NewMessage() Message {
	return Message("Hi there!")
}
