ARG SOPS_VERSION="3.7.3"

FROM golang:1.15-alpine AS sops-builder

RUN apk add --update --no-cache make
ADD https://github.com/mozilla/sops/archive/v${SOPS_VERSION}.tar.gz /go/src/app/
RUN tar xzf /go/src/app/v${SOPS_VERSION}.tar.gz -C /go/src/app/
WORKDIR /go/src/app/sops-${SOPS_VERSION}
RUN make install


FROM qmcgaw/godevcontainer

RUN apk add --update --no-cache yamllint curl unzip bash make gnupg
COPY --from=sops-builder /go/bin/sops /bin/sops
