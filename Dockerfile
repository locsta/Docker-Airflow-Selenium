FROM apache/airflow:2.0.2
USER root
COPY requirements.txt /home/requirements.txt
RUN pip install -r /home/requirements.txt
