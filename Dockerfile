FROM python:3.9-alpine
MAINTAINER JAVA FIGHTERS

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D recipe_api_user
USER recipe_api_user
