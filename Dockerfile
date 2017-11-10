FROM python:3.6

WORKDIR /app

COPY requirements.txt /app

RUN apt-get update && apt-get install --yes portaudio19-dev libsndfile*

RUN pip install -r requirements.txt
COPY . /app

CMD bash
