VERSION := $(shell cat VERSION)

docker:
	docker build --tag=cybergrx/graphql-linter:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/graphql-linter:${VERSION} cybergrx/graphql-linter:latest

	docker push cybergrx/graphql-linter:${VERSION}
	docker push cybergrx/graphql-linter:latest
