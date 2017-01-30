FROM python:3.5

ENV PYTHONUNBUFFERED 1

RUN mkdir /integration

WORKDIR /integration

ADD requirements.txt /integration/

RUN pip install -r requirements.txt

ADD . /integration/