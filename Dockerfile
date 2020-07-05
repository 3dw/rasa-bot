# Pull SDK image as base image
FROM rasa/rasa-sdk:1.8.3-full

# Use subdirectory as working directory
WORKDIR /app

# Change to root user to install dependencies
USER root

# Copy data
COPY data/nlu.md /app/data/
COPY data/sotries.md /app/data/
COPY domain.yml /app