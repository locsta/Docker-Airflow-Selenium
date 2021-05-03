# Shutdown containers if they are already runnning and run docker compose file
sudo docker-compose down
sudo docker-compose up

# Open AirFlow GUI
python -m webbrowser http://localhost:8080/

echo "Selenium hub  => http://localhost:4444/wd/hub"
echo "Selenium grid => http://localhost:4444/grid/console"