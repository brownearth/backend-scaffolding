# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
GOTIDY=$(GOCMD) tidy
BINARY_NAME=backend-scaffolding.exe

# Default target executed when no arguments are given to make.
default: build

# Build the project
build:
	$(GOBUILD) -o $(BINARY_NAME) -v ./cmd/api/main.go

# Run the tests
test:
	$(GOTEST) ./... -v

# Clean build files
clean:
	$(GOCLEAN)
	rm -f $(BINARY_NAME)

# Install dependencies
deps:
	$(GOGET) -v ./...

tidy:
	$(GOTIDY) 
# Run the server
run: build
	./$(BINARY_NAME)

.PHONY: build test clean deps run