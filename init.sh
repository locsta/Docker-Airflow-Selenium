# Create folders shared 
sudo mkdir dags logs plugins
sudo chmod -R 777 dags logs plugins

# Set Airflow uid
echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env

# Init airflow and run docker containers
sudo docker-compose up airflow-init