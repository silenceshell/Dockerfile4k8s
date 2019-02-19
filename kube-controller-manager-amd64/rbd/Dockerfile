FROM ubuntu:16.04

ARG KUBERNETES_VERSION=v1.11.1

ENV DEBIAN_FRONTEND=noninteractive \
    container=docker

RUN set -x \
    && apt-get update \
    && apt-get install -y \
        ceph-common \
    && chmod +x /usr/bin/${KUBERNETES_COMPONENT} \
    && apt-get purge -y --auto-remove \
        curl \
    && rm -rf /var/lib/apt/lists/*

COPY kube-controller-manager /usr/bin/
