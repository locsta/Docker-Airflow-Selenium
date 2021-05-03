# Create folders shared 
sudo mkdir dags logs plugins data
sudo chmod -R 777 dags logs plugins data

# Build custom Docker Image of apache/airflow
sudo docker build -t apache/airflow:2.0.2 .

# Set Airflow uid
echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env

# Init airflow and run docker containers
sudo docker-compose up airflow-init