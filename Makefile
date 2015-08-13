default: image

image: 
	docker build -t trusty-trash --rm --force-rm=true .

install:
	docker run -d --name=stephen -p 2022:22 -t trusty-trash

clean:
	docker stop stephen
	docker rm stephen
