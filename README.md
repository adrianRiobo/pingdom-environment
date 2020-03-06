# pingdom-environmet
Basic environment to develop a k8s operator in go

# Components

[docker](https://www.docker.com/)  
[kind](https://github.com/kubernetes-sigs/kind)
[kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/)
[go](https://golang.org/)
[operator-sdk](https://github.com/operator-framework/operator-sdk)

# Build

docker build -t adrianriobo/pingdom-echo/environment:0.1 .

# Usage

docker run -it -v /var/rund/docker.sock:/var/run/docker.sock --entrypoint=bash adrianriobo/pingdom-echo/environment:0.1
