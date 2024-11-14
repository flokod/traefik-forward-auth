FROM alpine AS builder

RUN apk add wget && wget https://github.com/thomseddon/traefik-forward-auth/releases/download/v2.3.0/traefik-forward-auth_amd64

FROM gcr.io/distroless/static

WORKDIR /app
COPY --from=builder --chmod=755 /traefik-forward-auth_amd64 /app/traefik-forward-auth

ENTRYPOINT ["/app/traefik-forward-auth"]
