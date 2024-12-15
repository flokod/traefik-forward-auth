# traefik-forward-auth

This repository provides OCI Images with [traefik-forward-auth](https://github.com/thomseddon/traefik-forward-auth)
binary, and that's all.

## Why?

Official [Docker build for traefik-forward-auth](https://hub.docker.com/r/thomseddon/traefik-forward-auth/tags) were
built in June 2021 (for the "latest" tag) and doesn't seem to be updated since. In addition, the 2-arm or 2.2.0-arm
tags were tagged as linux/amd64 platforms and built on June 2020.

Some bugs were fixed in latest releases, but no official Docker images seems to have been built with these up-to-date
releases.

## Alternatives

This repository build images by downloading an official traefik-forward-auth build from
[GitHub releases](https://github.com/thomseddon/traefik-forward-auth/releases). Thus, it only provides amd64
and arm versions.

If you need an OCI image with traefik-forward-auth built from source, or if you specifically needs an armv7 or arm64
version, check https://github.com/StefanSchoof/traefik-forward-auth/pkgs/container/traefik-forward-auth.
