all:

build:
	cp -af Dockerfile.orig Dockerfile
	cp -af ex1/main.go .
	cp -af ex1/docker-entrypoint.sh .
	go build -o main
	docker build -t test_zombie_ex1:latest .

	cp -af Dockerfile.orig Dockerfile
	cp -af ex2/main.go .
	cp -af ex2/docker-entrypoint.sh .
	go build -o main
	docker build -t test_zombie_ex2:latest .

	cp -af Dockerfile.orig Dockerfile
	cp -af ex3/main.go .
	cp -af ex3/docker-entrypoint.sh .
	cp -af ex3/Dockerfile .
	go build -o main
	docker build -t test_zombie_ex3:latest .

	cp -af Dockerfile.orig Dockerfile
	cp -af ex4/main.go .
	cp -af ex4/docker-entrypoint.sh .
	go build -o main
	docker build -t test_zombie_ex4:latest .

	rm -f Dockerfile docker-entrypoint.sh main.go main