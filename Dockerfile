FROM python:3.6-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

LABEL maintainer="G Nye"

CMD flask run --host=0.0.0.0 --port=5000
