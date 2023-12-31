ARG VERSION

FROM jenkins/jenkins:$VERSION
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y npm
# drop back to the regular jenkins user - good practice
USER jenkins