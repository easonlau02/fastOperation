
# Substitue the <node-ip> with your deployment
docker run --net=host -ti eason02/redis-trib:3.2 ruby redis-trib.rb create --replicas 1 <node1-ip>:6379 <node2-ip>:6380 <node3-ip>:6381 <node4-ip>:6382 <node5-ip>:6383 <node6-ip>:6384
