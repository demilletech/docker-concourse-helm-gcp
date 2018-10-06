all: build push
test: build pushtest

build:
	docker build -t demilletech/concourse-helm-gcp:local . --no-cache

push:
	docker tag demilletech/concourse-helm-gcp:local demilletech/concourse-helm-gcp:latest
	docker push demilletech/concourse-helm-gcp:latest

pushtest:
	docker tag demilletech/concourse-helm-gcp:local demilletech/concourse-helm-gcp:test
	docker push demilletech/concourse-helm-gcp:latest
