# Makefile

## HELP:
.PHONY: help
## help: Show this help message.
help:
	@echo "Usage: make [target]\n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

## :
## BUILD:

.PHONY: build
## build: Generate static HTML files.
build:
	trmnlp build

## :
## RUN:

.PHONY: run
## run: Start a local TRMNL dev server with plugin.
run:
	trmnlp serve

## :
## INSTALL:

.PHONY: install
## install: Upload the latest plugin settings to the TRMNL server.
install:
	trmnlp push

## :
