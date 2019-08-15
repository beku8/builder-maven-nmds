FROM jenkinsxio/builder-maven:latest

# Install your tools and libraries
RUN wget -O /etc/yum.repos.d/cloudfoundry-cli.repo https://packages.cloudfoundry.org/fedora/cloudfoundry-cli.repo \
    && yum install -y cf-cli

CMD ["cf", "--version"]