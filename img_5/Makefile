image_name = img_5

clean:
	docker rmi $(image_name) || echo ''

container:
	docker build --tag $(image_name) .

run:
	docker run --rm -p5000:3000 $(image_name)
