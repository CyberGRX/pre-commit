VERSION := $(shell cat VERSION)

docker:
	docker build --tag=cybergrx/terraform-linter:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/terraform-linter:${VERSION} cybergrx/terraform-linter:latest

	docker push cybergrx/terraform-linter:${VERSION}
	docker push cybergrx/terraform-linter:latest
