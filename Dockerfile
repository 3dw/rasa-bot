# Pull SDK image as base image
FROM rasa/rasa-sdk:1.8.3-full

# Use subdirectory as working directory
WORKDIR /app

# Copy actions requirements
COPY actions/requirements-actions.txt ./

# Change to root user to install dependencies
USER root

# Install extra requirements for actions code
RUN pip install -r requirements-actions.txt

# Install modules from setup.py
COPY setup.py /app
RUN  pip install -e . --no-cache-dir

# Copy data
COPY data/nlu.md /app/data/
COPY data/sotries.md /app/data/
COPY domain.yml /app