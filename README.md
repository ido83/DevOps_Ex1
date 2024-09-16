# DevOps Interview Challenge: Deploying, Monitoring, and Visualizing a Web Application
Scenario:
You are tasked with deploying a Python-based web application using Docker and Kubernetes. Additionally, you will set up monitoring using Prometheus and Grafana to collect and visualize health check metrics. You will write scripts to handle logging, monitoring, container management, and automation using Docker Compose and PowerShell.

# Part 1: Linux & Bash (System Setup)
Task: Write a Bash script that does the following:

Creates a directory called /var/log/webapp if it doesn't exist.
Ensures that this directory is accessible by a user named webapp.
Creates a log file named access.log in that directory and sets proper permissions.
Use awk to extract and display only the timestamps from the log file.

# Part 2: Python (Application Health Check and Metrics Exposure)
Task:

Write a Python script that checks the health of a web service (running on localhost:5000) by making an HTTP request every 10 seconds. Log the result (Success/Failure) to /var/log/webapp/access.log.
Additionally, expose health check metrics using Prometheus' client library.

# Question: Why is logging important in microservices, and how would you manage logs in a large-scale system?

# Question: Explain how Prometheus metrics are exposed and how they can be utilized for monitoring.

# Part 3: Docker & Docker Compose (Containerizing the Application and Monitoring Tools)
Task:

Create a Dockerfile for the Python application.
Create a docker-compose.yml to orchestrate the Python app, Nginx reverse proxy, Prometheus, and Grafana.

# Question: Explain the role of Docker Compose in multi-container environments. How does it simplify the process?

# Question: How would you configure Prometheus to scrape metrics from multiple services?

# Part 4: Kubernetes (Deploying to a K8s Cluster with Monitoring)
Task:

Create Kubernetes manifests to deploy the webapp, Nginx, Prometheus, and Grafana.
Ensure that Prometheus scrapes metrics from the webapp and Grafana is configured to visualize them.

# Question: What is the difference between a ClusterIP, NodePort, and LoadBalancer service in Kubernetes?

# Question: How would you configure Grafana to connect to Prometheus as a data source and create a dashboard to visualize the webapp_health_status metric?

# Windows
# Part 5: PowerShell (Windows Automation)
Task: Write a PowerShell script (deploy.ps1) that checks if Docker is running on a Windows machine and, if not, starts the Docker service. After that, use Docker Compose to start the webapp, nginx, prometheus, and grafana services.

# Question: What are the main differences between shell scripting in Bash and PowerShell?

# Part 6: Log Analysis with awk
Task: Use awk to analyze the access.log file created earlier. Find how many times the service returned "Failure" in the last 24 hours.


# Part 7: Monitoring with Prometheus and Grafana
Task:

Ensure that Prometheus is configured to scrape metrics from the webapp.
Configure Grafana to use Prometheus as a data source.
Create a Grafana dashboard that visualizes the webapp_health_status metric over time.


# DevOps_Ex1
