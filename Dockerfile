# Use a minimal Alpine base image
FROM alpine:3.19

# Install bash (Alpine uses sh by default)
RUN apk add --no-cache bash

# Create app directory
WORKDIR /app

# Copy the script into the container
COPY script.sh .

# Make the script executable
RUN chmod +x script.sh

# Execute the script when the container runs
ENTRYPOINT ["bash", "script.sh"]