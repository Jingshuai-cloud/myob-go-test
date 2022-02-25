SECRET=local

build:
		docker build --build-arg SECRET_VALUE=$(SECRET) --tag docker-go-app .

run-local:
		docker run -it --rm -p 8080:8080 docker-go-app

test:
		docker run --rm -p 8080:8080 \
			docker-go-app \
			/bin/bash -c "go test"
