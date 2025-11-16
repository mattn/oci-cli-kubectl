FROM ghcr.io/oracle/oci-cli:latest

RUN VERSION=$(wget -qO - https://dl.k8s.io/release/stable.txt) && \
    wget -O /tmp/kubectl "https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 /tmp/kubectl /usr/local/bin/kubectl && \
    rm -f /tmp/kubectl
