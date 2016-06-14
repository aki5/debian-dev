
image:
	docker build -t anyrhine/debian-dev .

push: image
	docker push anyrhine/debian-dev

clean:
	docker rmi anyrhine/debian-dev || exit 0

nuke: clean
	docker rm `docker ps -a -q` || exit 0
	docker rmi `docker images | awk '$$2 ~ /<none>/{print $$3}'` || exit 0



