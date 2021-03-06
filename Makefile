default: help

help:
	@echo "Popular Make Targets:"
	@echo "   image - build docker image"
	@echo "   run   - run shell in built image"

prodimage:
	docker build --pull --no-cache --compress --squash --tag primemath .

image:
	docker build --tag primemath .

run: image
	docker run --rm --name primemath -it primemath:latest || true

