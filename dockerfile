FROM python:3.11.4-slim-bookworm

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

RUN mkdir /app
COPY ./app /app

RUN adduser user
USER user