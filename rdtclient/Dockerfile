# Define the base image for Home Assistant
ARG BUILD_FROM=ghcr.io/hassio-addons/debian-base:7.6.2
FROM ${BUILD_FROM} as base

# Set environment variables
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# Install RDTClient from the official image
RUN apk add --no-cache curl && \
    curl -L -o /tmp/rdtclient.tar.gz https://github.com/RogerFar/RDTClient/releases/download/latest/rdtclient.tar.gz && \
    mkdir -p /usr/bin && \
    tar -xzf /tmp/rdtclient.tar.gz -C /usr/bin && \
    rm /tmp/rdtclient.tar.gz

# Expose ports
EXPOSE 6500

# Copy the run.sh script
COPY run.sh /etc/cont-init.d/10-run.sh
RUN chmod +x /etc/cont-init.d/10-run.sh

# Start S6 init
CMD ["/init"]
