.PHONY: all build run

all:
	$(MAKE) build
	$(MAKE) run

build:
	docker build -t opendj .

run:
	docker run -d -p 1389:1389 -p 1636:1636 -p 4444:4444 --name opendj opendj

clean:
	docker rm -f opendj || true
	docker rmi -f opendj || true
