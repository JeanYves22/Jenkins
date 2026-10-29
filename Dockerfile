FROM jenkins/jenkins:lts-jdk25

USER root

# Client Docker + plugin compose, copiés depuis l'image officielle docker:cli
COPY --from=docker:cli /usr/local/bin/docker /usr/local/bin/docker
COPY --from=docker:cli /usr/local/libexec/docker/cli-plugins/docker-compose /usr/local/libexec/docker/cli-plugins/docker-compose
COPY --from=docker/buildx-bin:latest /buildx /usr/local/libexec/docker/cli-plugins/docker-buildx


USER jenkins