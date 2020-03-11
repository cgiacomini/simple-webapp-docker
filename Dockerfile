FROM python:3.8.1-buster

WORKDIR /simple-webapp-docker

COPY ./app.py           ./
ADD  ./requirements.txt ./

RUN pip install --no-cache-dir -U pip
RUN pip install --no-cache-dir -U -r requirements.txt

EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
