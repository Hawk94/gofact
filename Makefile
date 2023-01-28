build:
	@go build -o bin/app ./cmd/main 

run: build
	./bin/app
