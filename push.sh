#!/bin/sh
set -x

LC=$(git rev-parse --short HEAD)
docker build -f Dockerfile -t jensendarren/ideaboard-api:${LC} .
docker push jensendarren/ideaboard-api:${LC}
# kubectl set image deployment ideaboard-api ideaboard-api=jensendarren/ideaboard-api:${LC}