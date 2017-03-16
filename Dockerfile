FROM fabric8/jenkins-jnlp-client

RUN yum install -y curl

RUN yum install -y yum-utils
RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
RUN yum makecache fast
RUN yum install -y docker-ce
