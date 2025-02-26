FROM alpine

# Install necessary tools
RUN apk add --no-cache bash coreutils

# Set working directory
WORKDIR /app

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Run the script on startup
CMD ["/bin/sh", "/entrypoint.sh"]
