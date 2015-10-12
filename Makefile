default: image

image: 
	docker build -t trusty-trash --rm --force-rm=true .

clean:
	docker stop trusty-trash || true
	docker rmi trusty-trash || true
