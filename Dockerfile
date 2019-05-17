FROM python:3.7.3-alpine3.9

COPY requirements.txt /black/requirements.txt

RUN /usr/local/bin/pip install --no-cache-dir --requirement /black/requirements.txt

ENV PYTHONUNBUFFERED 1

ENTRYPOINT ["/usr/local/bin/blackd", "--bind-host", "0.0.0.0"]

LABEL maintainer=william@subtlecoolness.com \
      org.label-schema.schema-version=1.0 \
      org.label-schema.version=19.3b0
