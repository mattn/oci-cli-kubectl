FROM ghcr.io/oracle/oci-cli:latest

USER root

RUN dnf -y install wget && \
    VERSION=$(wget -qO- https://dl.k8s.io/release/stable.txt) && \
    wget "https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl" -O /tmp/kubectl && \
    chmod +x /tmp/kubectl && \
    mv /tmp/kubectl /usr/local/bin/kubectl && \
    dnf clean all

USER oracle
