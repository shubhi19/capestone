# capestone

## About

### Problem Statement
Build a CI/CD pipeline for a microservices application with blue-green deployment strategy. Containerize the application in a Dockerfile and enable typographical linting with a linter. Finally, utilize a cloud formation template to deploy an EKS cluster.

### Technology stack
This project is an amalgamation of the following technologies :
* AWS
* Jenkins
* Kubernetes
* Docker

### Features
* The project consists of a Jenkinsfile with scripted pipeline syntax to deploy a microservice via CI/CD pipeline using blue-green deployment technique. The project also encorporates typographical checking or linting for Dockerfiles using hadolint. Automation server being utilized for this project is Jenkins which was equipped with several required plugins such as Blue Ocean, AWS Pipeline, Docker, etc.
* Global credentials were stored for docker hub and aws iam user in Jenkins to facilitate pushing built docker image to dockerhub and deploying to AWS Elastic Kubernetes Service.

* Continuous Integration phase of the pipeline would include checking out code from SCM and typographical checking on the Dockerfile. The Dockerfile uses nginx 1.8-alpine image for rendering a simple HTML page which shows which type of deployment (blue or green) is being deployed.
The project uses Cloud Formation template to deploy an EKS cluster.





