all: minimal standard

standard: minimal Dockerfile.standard
	docker build -t sorenisanerd/ubuntu:standard . -f Dockerfile.standard

minimal: Dockerfile.minimal
	docker build -t sorenisanerd/ubuntu:minimal . -f Dockerfile.minimal
