# Shutdown containers if they are already runnning and run docker compose file in detached mode
sudo docker-compose down
sudo docker-compose up -d

# Open AirFlow GUI
python -m webbrowser http://localhost:8080/home


echo "####################################################"
echo "##  Selenium hub  => http://localhost:4444/       ##"
echo "##                                                ##"
echo "##               ~~VNC SERVERS~~                  ##"
echo "##  Chrome  VNC Server: 0.0.0.0:6900              ##"
echo "##  Edge    VNC Server: 0.0.0.0:6901              ##"
echo "##  Firefox VNC Server: 0.0.0.0:6902              ##"
echo "##  Opera   VNC Server: 0.0.0.0:6903              ##"
echo "####################################################"
echo 
echo "####################  LOGINS  ######################"
echo "        Airflow Login    : 'airflow'"
echo "        Airflow Password : 'airflow'"
echo "####################################################"
echo 
echo "###################  IMPORTANT  ####################"
echo "Don't forget to stop the containers when you are done using stop.sh or remove_docker.sh"
echo "Wait a few seconds for the Airflow server to start, or refresh the browser"
echo "More info here ==> https://github.com/locsta/Docker-Airflow-Selenium"
echo "####################################################"
