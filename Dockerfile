FROM ghcr.io/oracle/oci-cli:latest

RUN dnf install -y curl && \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    rm -rf kubectl && \
    dnf remove -y curl && dnf clean all
