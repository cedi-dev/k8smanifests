ARG SOPS_VERSION="3.7.3"

FROM qmcgaw/godevcontainer

ARG SOPS_VERSION
ENV ENV_SOPS_VERSION="${SOPS_VERSION}"

RUN apk add --update yamllint curl unzip bash make gnupg

ADD https://github.com/mozilla/sops/archive/v${SOPS_VERSION}.tar.gz /go/src/app/
RUN tar xzf /go/src/app/v${ENV_SOPS_VERSION}.tar.gz -C /go/src/app/ && \
    cd /go/src/app/sops-${ENV_SOPS_VERSION} && \
    make install
