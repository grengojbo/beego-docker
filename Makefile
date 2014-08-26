IMAGE_NAME=grengojbo/beego

.PHONY: all clean run build push pull shell

all: run

clean:
	docker rmi ${IMAGE_NAME}

shell:
	docker run -it --rm ${IMAGE_NAME} /bin/bash

run:
	@docker run --rm -i -t ${IMAGE_NAME} /bin/bash

push:
	@docker push ${IMAGE_NAME}

pull:
	@docker pull ${IMAGE_NAME}

build:
	@docker build -t ${IMAGE_NAME} .
