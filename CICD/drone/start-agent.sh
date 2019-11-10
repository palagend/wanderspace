#/bin/bash

docker run -d \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-e DRONE_RPC_PROTO=http \
	-e DRONE_RPC_HOST=eve.ceego.top \
	-e DRONE_RPC_SECRET=b3f64b83c9197de77206a9bc52610a72 \
	-e DRONE_RUNNER_CAPACITY=2 \
	-e DRONE_RUNNER_NAME=${HOSTNAME} \
	-p 3000:3000 \
	--restart always \
	--name runner \
	drone/agent:1
