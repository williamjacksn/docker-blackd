FROM python:3.7.4-alpine3.10

COPY requirements.txt /black/requirements.txt

RUN /usr/local/bin/pip install --no-cache-dir --requirement /black/requirements.txt

ENV PYTHONUNBUFFERED 1

ENTRYPOINT ["/usr/local/bin/blackd", "--bind-host", "0.0.0.0"]

LABEL org.opencontainers.image.authors="William Jackson <william@subtlecoolness.com>" \
      org.opencontainers.image.version=19.3b0
