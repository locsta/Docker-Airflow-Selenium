import time
import pandas as pd
from datetime import datetime

from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.operators.dummy_operator import DummyOperator

from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.support.ui import WebDriverWait

def test_selenium():
    try:
        driver = webdriver.Remote(command_executor='http://selenium-router:4444', desired_capabilities=DesiredCapabilities.OPERA)
        driver.maximize_window()
        driver.get("https://github.com/locsta")
        time.sleep(10)
        header = driver.find_element_by_tag_name("h1").text
        pd.DataFrame([header]).to_csv(f"/opt/airflow/data/{datetime.now()}.csv")
    except:
        driver.quit()
    finally:
        driver.quit()

with DAG("my_dag", start_date=datetime(2021, 1, 1), schedule_interval='*/3 * * * *', catchup=False) as dag:
    
    start = DummyOperator(
        task_id="start"
    )

    task_a = PythonOperator(
        task_id="task_a",
        python_callable=test_selenium
    )

    end = DummyOperator(
        task_id="end"
    )

    start >> task_a >> end
