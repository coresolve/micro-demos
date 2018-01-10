FROM ubuntu:latest
ENV ETCDCTL_API=3
ENV TERM=vt100
ENV HOME=/root
ADD https://storage.googleapis.com/kubernetes-release/release/v1.8.4/bin/linux/amd64/kubectl /usr/local/bin/kubectl
ADD https://s3cr3t.net/etcdctl /usr/local/bin/etcdctl
ADD https://s3cr3t.net/micro-demos.tar.gz /root/
WORKDIR /root
RUN set -x && \
    tar -xvzf /root/micro-demos.tar.gz -C /root/ && \
    chmod +x /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/etcdctl

RUN apt-get update && apt-get install -y --no-install-recommends \
    pv tmux curl vim git && \
    apt-get clean && apt-get purge && \
    rm -rf /var/lib/apt/lists/*

CMD ["sleep", "infinity"]
