ifdef FORCE
NOCACHE=--no-cache
endif

all: minimal standard

standard: minimal Dockerfile.standard
	docker build $(NOCACHE) -t sorenisanerd/ubuntu:standard . -f Dockerfile.standard

minimal: Dockerfile.minimal
	docker build $(NOCACHE) -t sorenisanerd/ubuntu:minimal . -f Dockerfile.minimal
