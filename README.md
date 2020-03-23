# pingdom-environmet

[![Docker build](https://img.shields.io/docker/cloud/build/adrianriobo/pingdom-environment?label=build&logo=docker)](https://hub.docker.com/r/adrianriobo/pingdom-environment/builds)

# Components

[docker](https://www.docker.com/)    
[kind](https://github.com/kubernetes-sigs/kind)   
[kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/)   
[go](https://golang.org/)   
[operator-sdk](https://github.com/operator-framework/operator-sdk)   

# Usage

docker run -it --name pingdom-environment \
           -v $PWD:/opt/pingdom \
           -v /var/run/docker.sock:/var/run/docker.sock \
           --entrypoint=bash --network=host \
           adrianriobo/pingdom-environmet:0.1

kind create cluster

kind delete cluster
