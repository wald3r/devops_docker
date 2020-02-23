docker build -t dist .
docker run -rm -p 5000:80 --name dist dist
