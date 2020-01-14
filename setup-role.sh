#!/bin/sh

ROLE="TODO"

test -f docker-compose.yml && test -f Dockerfile && echo "The current working directory seems not to be a suited poject folder." && exit 1

docker-compose exec -u jetty platform /bin/sh -c "echo -e '\n$ROLE' >> /runtime-data/config/shiro.ini"
docker-compose restart platform
