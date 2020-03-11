FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN pip install --upgrade pip
RUN pip install -r ./requirements.txt
COPY ./app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py

