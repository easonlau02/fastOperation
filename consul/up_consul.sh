#!/bin/bash

docker run -d -e 'CONSUL_LOCAL_CONFIG={"skip_leave_on_interrupt": true}' --name=node1 consul agent -server -bind=172.17.0.2  -bootstrap-expect=3 -node=node1
docker run -d -e 'CONSUL_LOCAL_CONFIG={"skip_leave_on_interrupt": true}' --name=node2 consul agent -server -bind=172.17.0.3  -join=172.17.0.2 -node-id=$(uuidgen | awk '{print tolower($0)}')  -node=node2
docker run -d -e 'CONSUL_LOCAL_CONFIG={"skip_leave_on_interrupt": true}' --name=node3 consul agent -server -bind=172.17.0.4  -join=172.17.0.2 -node-id=$(uuidgen | awk '{print tolower($0)}')  -node=node3 -client=172.17.0.4
docker run -d -e 'CONSUL_LOCAL_CONFIG={"leave_on_terminate": true}' --name=node4 consul agent -bind=172.17.0.5 -retry-join=172.17.0.2 -node-id=$(uuidgen | awk '{print tolower($0)}')  -node=node4


docker exec -t node1 consul members
