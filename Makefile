PROJECTNAME="demo-wire"

GOPROXY=GOPROXY=https://goproxy.io
GOCMD=go
GOBUILD=$(GOPROXY) $(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOPROXY) $(GOCMD) test
GOGET=$(GOCMD) get
GOLINT=

BIN_DIR=./bin

SWAG_CMD=swag init
RUN_CMD=go run main.go

WIRE_BIN=wire
WIRE_CMD=(cd internal/app && $(GOPROXY) $(WIRE_BIN))

help: Makefile
	@echo
	@echo " Choose a command run in "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' | sed -e 's/^/ /'

## deps: install all deps
deps:
	@echo "deps"

build:
	@echo "build"

run:
	@echo "run"

wire:
	$(WIRE_CMD)

dev:
	@echo "dev"

lint:
	@echo "lint"

test:
	@echo "test"

mod_tidy:
	@$(GOPROXY) $(GOCMD) mod tidy
