CONTAINER_NAME="hello-world-run"
OLD="$(docker ps --all --quiet --filter=name="$CONTAINER_NAME")"
if [ -n "$OLD" ]; then
  docker rm -f $OLD
fi
docker run -d --name hello-world-run -p 8090:8080 hello-world-afip