---
layout: mpost
title: Automating Tasks with Apache Airflow
date: "2024-12-07 15:23:00 +/-0000"
description: "A detailed guide to automating interesting tasks with Apache Airflow, complete with examples and screenshots."
categories: [Automation, Apache Airflow]
tags: [airflow, automation, data-pipelines, tutorials]
author: metalerk
permalink: /automating-tasks-with-apache-airflow/
---

## Introduction

Apache Airflow is a powerful open-source platform used to programmatically author, schedule, and monitor workflows. With its robust architecture and flexibility, you can automate tasks ranging from simple data processing to complex machine learning pipelines.

In this tutorial, we'll cover:
1. Setting up Apache Airflow
2. Automating tasks using Directed Acyclic Graphs (DAGs)
3. Examples of automation, including:
   - Running a daily ETL pipeline
   - Sending email notifications
   - Automating website scraping

---

## Prerequisites

Before diving in, ensure you have:
- Python (3.7 or later) installed.
- Basic knowledge of Python programming.
- A working Docker installation (optional but recommended for Airflow setup).

---

## Setting Up Apache Airflow

### 1. Install Apache Airflow Locally

To install Apache Airflow, use `pip`:

`pip install apache-airflow`

Set up the Airflow database:

`airflow db init`

Create a user account:

{% highlight bash %}
airflow users create \
  --username admin \
  --password admin \
  --firstname First \
  --lastname Last \
  --role Admin \
  --email admin@example.com
{% endhighlight %}

Start the Airflow webserver and scheduler:

{% highlight bash %}
airflow webserver -p 8080 &
airflow scheduler &
{% endhighlight %}

Visit [127.0.0.1:8080](http://localhost:8080){: target="__blank"} to access the Airflow web UI.

### Automating Tasks with DAGs

Apache Airflow uses DAGs (Directed Acyclic Graphs) to define workflows. DAGs consist of tasks and dependencies between them.

### Creating a DAG
Below is an example of a simple DAG that prints a message.

{% highlight python %}
from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from datetime import datetime

# Define the DAG
default_args = { 'owner': 'airflow', 'depends_on_past': False, 'start_date': datetime(2024, 1, 1), 'retries': 1, }

def print_hello():
    print("Hello, Apache Airflow!")

with DAG( 'hello_world_dag', default_args=default_args, description='A simple hello world DAG', schedule_interval='@daily', ) as dag:
    hello_task = PythonOperator( task_id='print_hello', python_callable=print_hello, )
{% endhighlight %}

Save this file as `hello_world_dag.py` in the `dags/` folder of your Airflow home directory.

## Examples of Automated Tasks

1. Daily ETL Pipeline
The following example demonstrates automating an ETL pipeline.

{% highlight python %}
from airflow import DAG
from airflow.operators.python_operator

import PythonOperator from datetime import datetime

def extract():
    print("Extracting data...")

def transform():
    print("Transforming data...")

def load():
    print("Loading data...")

with DAG(
  'etl_pipeline',
  default_args={ 'owner': 'airflow', 'depends_on_past': False, 'start_date': datetime(2024, 1, 1), 'retries': 1, }, description='A simple ETL pipeline',
  schedule_interval='@daily') as dag:
      extract_task = PythonOperator( task_id='extract', python_callable=extract, )
      transform_task = PythonOperator( task_id='transform', python_callable=transform, )
      load_task = PythonOperator( task_id='load', python_callable=load, )

# Define dependencies
extract_task >> transform_task >> load_task
{% endhighlight %}

2. Sending Email Notifications
Use the `EmailOperator`` to automate email sending.

{% highlight python %}
from airflow.operators.email_operator
import EmailOperator

email_task = EmailOperator( task_id='send_email', to='recipient@example.com', subject='Daily Report', html_content='The daily pipeline completed successfully.', dag=dag)
{% endhighlight %}

Add the email_task to a DAG and schedule it after a task completes.

3. Automating Web Scraping
Below is a task for scraping a website using Python’s requests library.

{% highlight python %}
import requests

def scrape_website():
    response = requests.get('https://example.com')
    with open('/tmp/scraped_data.html', 'w') as f:
        f.write(response.text)

scrape_task = PythonOperator( task_id='scrape_website', python_callable=scrape_website, dag=dag)
{% endhighlight %}


# Conclusion

Apache Airflow simplifies the automation of complex workflows. Whether you're building ETL pipelines, scheduling scripts, or monitoring task dependencies, Airflow's flexibility and features make it a must-have tool for modern automation tasks.

Start exploring the possibilities and integrate Airflow into your workflow to save time and reduce errors!