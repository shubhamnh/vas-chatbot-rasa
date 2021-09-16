# Pull base image
FROM rasa/rasa:2.5.2

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# Copy project
COPY . /app

# Make services script executable and train models
USER root
RUN chmod +x /app/services.sh
RUN rasa train
RUN rasa telemetry disable
USER 1001


ENTRYPOINT ["/app/services.sh"]