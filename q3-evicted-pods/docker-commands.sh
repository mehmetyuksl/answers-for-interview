docker build -t cleanup-evicted-pods .
docker tag cleanup-evicted-pods registry-url/cleanup-evicted-pods
docker push registry-url/cleanup-evicted-pods