FROM alpine AS builder

ARG VERSION
ARG ARCH=amd64

RUN apk add wget && wget https://github.com/thomseddon/traefik-forward-auth/releases/download/v$VERSION/traefik-forward-auth_$ARCH

FROM gcr.io/distroless/static

ARG ARCH=amd64

WORKDIR /app
COPY --from=builder --chmod=755 /traefik-forward-auth_$ARCH /app/traefik-forward-auth

ENTRYPOINT ["/app/traefik-forward-auth"]
