FROM python:3.8.3-alpine3.12

COPY requirements.txt /black/requirements.txt

RUN /sbin/apk add --no-cache --virtual .deps gcc musl-dev \
 && /usr/local/bin/pip install --no-cache-dir --requirement /black/requirements.txt \
 && /sbin/apk del --no-cache .deps

ENV PYTHONUNBUFFERED="1"

ENTRYPOINT ["/usr/local/bin/blackd", "--bind-host", "0.0.0.0"]

LABEL org.opencontainers.image.authors="William Jackson <william@subtlecoolness.com>" \
      org.opencontainers.image.version="19.10b0"
