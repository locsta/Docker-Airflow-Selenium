# Docker-Airflow-Selenium
## Why Use Docker-Airflow-Selenium
 *  
 * 
 * 

## Install Docker
Before you can use this docker image you need to have Docker installed.
If you don't have docker installed yet have a look at Docker's official website https://docs.docker.com/engine/install/
NOTE: If you use Linux you will need to install docker-compose -> https://docs.docker.com/compose/install/

## Quick Start
### Init Airflow
If you use this repository for the first time or have used **remove_docker.sh** to remove docker images you will need to run the following command.
The **init.sh** bash script will create shared folders (dags, logs, plugins, data) with airflow workers and create a custom built Docker image of Airflow including pip packages listing in *requirements.txt*

```bash
./init.sh
```

### Create Airflow & Selenium Grid containers
The **start.sh** file will start the docker containers and open the Airflow webserver in your browser.

```bash
./start.sh
```
If the webserver is not showing on the browser didn't open simply go to this url: http://localhost:8080/
All the containers should now be running, and if you have dags in the dags folder they will be accessible in airflow.

## Observe the Selenium nodes running
You can have access to the web browser running using a VNC Viewer
Here is a good VNC viewer if you don't have one installed yet -> https://www.realvnc.com/en/connect/download/viewer/
The password for all server is the same: "secret"

You can access the various browser using the folling VNC servers
  * Chrome  VNC Server: 0.0.0.0:6900
  * Edge    VNC Server: 0.0.0.0:6901
  * Firefox VNC Server: 0.0.0.0:6902
  * Opera   VNC Server: 0.0.0.0:6903

## Create your Airflow's dags
Check the dags folder for an example of dag using selenium.
The dag **my_dag.py** use Opera to get the text contained in the h1 tag in this Github repo and save it in a .csv file in the *data* folder.
This dags runs every 3 minutes and you can see it running here at this link http://localhost:8080/tree?dag_id=my_dag and observe the corresponding browser in VNC viewer at 0.0.0.0:6903

## Once you are done
### Stop the containers
To stop the docker containers you can use one of the following methods:
```bash
# Will stop the running containers
docker-compose down
```
```bash
# Will stop and remove the running containers
./stop.sh
```

### Remove Docker Images and Containers
Optional:
If you want to remove all docker images and containers on your computer run this command:
```bash
# Will stop and remove all docker containers, as well as all docker images
sudo bash remove_docker.sh
```