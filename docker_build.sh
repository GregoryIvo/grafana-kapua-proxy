#!/bin/bash
#
docker build -t grafana-proxy .
docker run -d -p 3000:3000 -p 3333:3333 grafana-proxy
docker tag grafana-proxy upumesar/grafana-proxy
docker push upumesar/grafana-proxy
