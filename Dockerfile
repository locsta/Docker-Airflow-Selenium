FROM apache/airflow:2.0.2
USER root
RUN pip install selenium
RUN pip install pandas
