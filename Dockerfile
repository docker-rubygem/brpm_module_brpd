FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.9

RUN gem install brpm_module_brpd --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["create_brpd_package_instance"]
CMD ["--help"]
