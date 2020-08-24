VERSION := $(shell cat VERSION)

docker:
	docker pull cybergrx/cypher-linter:${VERSION} || docker build --tag=cybergrx/cypher-linter:${VERSION} --build-arg VERSION=${VERSION} -f Dockerfile .
	docker tag cybergrx/cypher-linter:${VERSION} cybergrx/cypher-linter:latest

	docker push cybergrx/cypher-linter:${VERSION}
	docker push cybergrx/cypher-linter:latest
