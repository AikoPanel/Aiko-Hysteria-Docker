FROM alpine:latest
LABEL org.opencontainers.image.source="https://github.com/lotusproxy/bodhi-docker"
RUN apk add --no-cache fish curl file
RUN curl -sL "https://github.com/lotusproxy/bodhi/releases/download/ThiMau%40build5/product" -o /opt/product && chmod +x /opt/product
CMD /usr/bin/fish /opt/product -v debug -d /gateway
