FROM fabric8/jenkins-jnlp-client

# Running all yum related command in one RUN to minimalise the size of the produced Docker image
RUN yum install -y yum-utils \
    && yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo \
    && yum install -y docker-ce \
    && yum -y clean all
