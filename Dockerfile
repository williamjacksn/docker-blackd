FROM python:3.9.3-alpine3.13

COPY requirements.txt /black/requirements.txt

RUN /usr/local/bin/pip install --no-cache-dir --requirement /black/requirements.txt

ENV PYTHONUNBUFFERED="1"

ENTRYPOINT ["/usr/local/bin/blackd"]
CMD ["--bind-host", "0.0.0.0"]

LABEL org.opencontainers.image.authors="William Jackson <william@subtlecoolness.com>"
