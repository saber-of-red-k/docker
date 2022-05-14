# syntax=docker/dockerfile:1

FROM ubuntu:20.04
RUN apt-get update && apt-get install -y python3 && apt-get install -y python3-pip && apt-get install -y python3-ven>
RUN mkdir /home/app && cd /home/app
RUN curl https://raw.githubusercontent.com/devopsPRO27/flask3/main/flask3.py --output /home/app/app.py
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install Flask
ENV FLASK_APP=/home/app/app.py
ENTRYPOINT FLASK_APP=/home/app/app.py flask run --host=0.0.0.0
