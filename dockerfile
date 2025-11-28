FROM ghcr.io/linuxserver/grocy:latest

# Set S6 overlay to use bash
ENV S6_CMD_WAIT_FOR_SERVICES_MAXTIME=0

# Copy run script
COPY run.sh /usr/bin/
RUN chmod a+x /usr/bin/run.sh

CMD [ "/usr/bin/run.sh" ]
