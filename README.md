# Docker-Airflow-Selenium
## Why Use Docker-Airflow-Selenium
 * Automate the testing of websites on various web browser
 * Automate the collection of data online at scale
 * Easily move your selenium scrapers from one computer or server to another one

## Install Docker
Before you can use this docker image you need to have Docker installed.  
TO install Docker => https://docs.docker.com/engine/install/  
NOTE: If you are on Linux you will need to install docker-compose => https://docs.docker.com/compose/install/  

## Quick Start
#### Init Airflow
If you use this repository for the first time or have used **remove_docker.sh** to remove docker images you will need to run the following command.  
  
The **init.sh** bash script will create shared folders (dags, logs, plugins, data) with airflow workers and create a custom built Docker image of Airflow including pip packages listed in *requirements.txt*  
Add your packages in requirements.txt to install your packages into the containers.  

```bash
./init.sh
```

#### Create Airflow & Selenium Grid containers
The **start.sh** file will start the docker containers and open the Airflow webserver in your default browser.  

```bash
./start.sh
```
If the webserver is not showing on the browser (usually takes a few seconds to load), go to this url: http://localhost:8080/  
All the containers should now be running, you can now add your dags in the **dags** folder.  

## Observe the Selenium nodes running
You can have access to the web browsers (selenium nodes) running using a VNC Viewer  
Here is a good VNC viewer if you don't have one installed yet -> https://www.realvnc.com/en/connect/download/viewer/  
![](https://github.com/locsta/Pictures/blob/main/Docker-Airflow-Selenium/vnc_viewer.png | width=250)

The password for all server is the same: "secret"  

You can access the various browser using the folling VNC servers
  * Chrome  VNC Server: 0.0.0.0:6900
  * Edge    VNC Server: 0.0.0.0:6901
  * Firefox VNC Server: 0.0.0.0:6902
  * Opera   VNC Server: 0.0.0.0:6903


![](https://github.com/locsta/Pictures/blob/main/Docker-Airflow-Selenium/vnc_selenium_grid.png | width=250)
![](https://github.com/locsta/Pictures/blob/main/Docker-Airflow-Selenium/vnc_opera.png | width=250)



## Create your Airflow's dags
Check the dags folder for an example of dag using selenium.  
The dag **my_dag.py** use Opera to get the text contained in the *h1* tag in this Github repo and save it in a .csv file in the *data* folder.  
This dags runs every 3 minutes and you can see it running here at this link http://localhost:8080/tree?dag_id=my_dag  
Observe the corresponding browser using VNC Viewer at this address: 0.0.0.0:6903  

## Once you are done
#### Stop the containers
To stop the docker containers you can use one of the following methods:
```bash
# Will stop the running containers
docker-compose down
```
```bash
# Will stop and remove the running containers
./stop.sh
```

#### Remove Docker Images and Containers
Optional:
If you want to remove all docker images and containers on your computer run this command:  s
```bash
# Will stop and remove all docker containers, as well as all docker images
sudo bash remove_docker.sh
```