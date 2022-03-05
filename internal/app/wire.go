//go:build wireinject
// +build wireinject

package app

import (
	"github.com/google/wire"
	. "github.com/lionng/demo-wire/internal/app/test_struct"
)

func InitializeEvent() Event {
	wire.Build(NewEvent, NewGreeter, NewMessage)
	return Event{}
}
