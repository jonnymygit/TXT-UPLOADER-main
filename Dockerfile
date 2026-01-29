FROM python:3.9.7-slim-buster


WORKDIR .
RUN apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo
COPY . .
RUN pip3 install -r requirements.txt

CMD gunicorn app:app & python3 main.py
