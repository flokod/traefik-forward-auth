FROM alpine AS builder

ARG VERSION
ARG TARGETARCH

RUN apk add wget && wget --no-verbose -O /traefik-forward-auth https://github.com/thomseddon/traefik-forward-auth/releases/download/v$VERSION/traefik-forward-auth_$TARGETARCH

FROM gcr.io/distroless/static

WORKDIR /app
COPY --from=builder --chmod=755 /traefik-forward-auth /app/traefik-forward-auth

ENTRYPOINT ["/app/traefik-forward-auth"]
