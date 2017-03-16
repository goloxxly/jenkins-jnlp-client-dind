FROM fabric8/jenkins-jnlp-client

# Let's start with some basic stuff.
RUN yum install -y curl

RUN yum install -y yum-utils
RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
RUN yum makecache fast
RUN yum install -y docker-ce

# ADD run.sh /run.sh
# RUN chmod 777 /run.sh

ENV DOCKER_API_VERSION=1.23

# ENTRYPOINT ["/run.sh"]
# # Install Docker from Docker Inc. repositories.
# RUN curl -sSL https://get.docker.com/ | sh

# # Install the wrapper script from https://raw.githubusercontent.com/docker/docker/master/hack/dind.
# ADD ./dind /usr/local/bin/dind
# RUN chmod +x /usr/local/bin/dind
#
# ADD ./wrapdocker /usr/local/bin/wrapdocker
# RUN chmod +x /usr/local/bin/wrapdocker
#
# # Define additional metadata for our image.
# VOLUME /var/lib/docker
#
# ENV DOCKER_COMPOSE_VERSION 1.3.3
#
# RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
# RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
# RUN apt-get update && apt-get install -y zip supervisor jenkins && rm -rf /var/lib/apt/lists/*
# RUN usermod -a -G docker jenkins
#
# # Install Docker Compose
# RUN curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
# RUN chmod +x /usr/local/bin/docker-compose
