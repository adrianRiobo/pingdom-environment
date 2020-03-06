FROM golang@sha256:1f2e3e2d770334dd511018a3ab55267aef1eea271d8833459e35f4c1d5044279

LABEL maintainer="adrian.riobo.lorenzo@gmail.com"

ENV KIND_VERSION=0.7.0 \
    K8S_VERSION=1.17.0 \
    OPERATORSDK_VERSION=0.15.2

RUN apt-get update \
    && apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt-get update \
    && apt-get install -y docker-ce docker-ce-cli containerd.io \
    && wget https://dl.k8s.io/v${K8S_VERSION}/kubernetes-client-linux-amd64.tar.gz -P /tmp \
    && tar -xzvf /tmp/kubernetes-client-linux-amd64.tar.gz -C /tmp \
    && mv /tmp/kubernetes/client/bin/kubectl /usr/local/bin \
    && rm -rf /tmp/* \
    && curl -Lo ./kind https://github.com/kubernetes-sigs/kind/releases/download/v$KIND_VERSION/kind-$(uname)-amd64 \
    && chmod +x ./kind \
    && mv ./kind /usr/local/bin \
    && wget https://github.com/operator-framework/operator-sdk/releases/download/v$OPERATORSDK_VERSION/operator-sdk-v$OPERATORSDK_VERSION-x86_64-linux-gnu -O /usr/local/bin/operator-sdk \
    && chmod +x /usr/local/bin/operator-sdk
