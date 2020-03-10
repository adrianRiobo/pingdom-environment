# pingdom-environmet
Basic environment to develop a k8s operator in go

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
