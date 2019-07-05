# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
BINARY_NAME=cortex-tool

all: build
build: 
	$(GOBUILD) -o bin/$(BINARY_NAME) -v
test: 
	$(GOTEST) -v -race ./...
clean: 
	$(GOCLEAN)
	rm -f bin/$(BINARY_NAME)
