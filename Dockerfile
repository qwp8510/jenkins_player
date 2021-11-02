FROM python:3.6-slim-buster

RUN pip install pytest

COPY . /app
WORKDIR /app

CMD ["/bin/echo", "HELLO THERE"]
