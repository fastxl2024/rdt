FROM rogerfar/rdtclient:latest

# S6 Overlay Environment Variable (force to run as PID 1)
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# CMD must use the S6 overlay init system
CMD ["/init"]
