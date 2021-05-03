FROM apache/airflow:2.0.2
USER root
COPY requirements.txt /home/requirements.txt
RUN sudo apt update
RUN sudo pip install --upgrade pip
RUN sudo pip install -r /home/requirements.txt
