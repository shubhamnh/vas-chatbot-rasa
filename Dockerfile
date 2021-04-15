# Pull base image
FROM python:3.7

# Set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# Install dependencies
# COPY Pipfile /app/
# RUN pip install pipenv
# RUN pipenv install --skip-lock
# RUN pipenv install --deploy --skip-lock
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy project
COPY . /app/

ENTRYPOINT []
# CMD ["rasa run"]