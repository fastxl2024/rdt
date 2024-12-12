# Define the base image for Home Assistant
ARG BUILD_FROM=ghcr.io/hassio-addons/debian-base:7.6.2
FROM ${BUILD_FROM} as base

# Stage 1: Pull the original RDTClient image
FROM rogerfar/rdtclient:latest as rdtclient

# Stage 2: Build the final image
FROM base

# Set environment variables for S6 overlay
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# Copy the RDTClient binaries from the original image
COPY --from=rdtclient /usr/bin/rdtclient /usr/bin/rdtclient

# Expose ports
EXPOSE 6500

# Add custom run script
COPY run.sh /etc/cont-init.d/10-run.sh
RUN chmod +x /etc/cont-init.d/10-run.sh

# Start S6 init
CMD ["/init"]
