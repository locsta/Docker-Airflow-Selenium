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