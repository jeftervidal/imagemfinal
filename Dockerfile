FROM ubuntu:latest
RUN apt update
RUN apt upgrade
RUN apt install -y python3 python3-pip git 
RUN python3 -m pip install flask azure-eventhub azure-iot-hub
EXPOSE 8080
COPY main.py /home/main.py

ENTRYPOINT FLASK_APP=/home/main.py flask run --host=0.0.0.0 --port=8080

