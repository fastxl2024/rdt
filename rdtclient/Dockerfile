# Stage 1: Pull the RDTClient image
FROM rogerfar/rdtclient:latest as rdtclient

# Stage 2: Build on Home Assistant base
ARG BUILD_FROM=ghcr.io/hassio-addons/base:12.2.8
FROM ${BUILD_FROM}

# Set environment variables
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# Copy RDTClient binaries
COPY --from=rdtclient /usr/bin/rdtclient /usr/bin/rdtclient

# Expose ports
EXPOSE 6500

# Add script
COPY run.sh /etc/cont-init.d/10-run.sh
RUN chmod +x /etc/cont-init.d/10-run.sh

# Start S6 init
CMD ["/init"]
