FROM python:3.7-alpine
LABEL maintainer="Bulzii3D"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client


RUN pip install -r requirements.txt

RUN  mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
RUN chown -R user:user /app
USER user
