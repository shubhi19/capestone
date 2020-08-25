# capestone

## About
### Technology stack
This project is an amalgamation of the following technologies :
* AWS
* Jenkins
* Kubernetes
* Docker

### Features
The project consists of a Jenkinsfile with scripted pipeline syntax to deploy a microservice via CI/CD pipeline using blue-green deployment technique. The project also encorporates typographical checking or linting for Dockerfiles using hadolint. 

CI Phase : Continuous Integration phase of the pipeline would include checking out code from SCM and typographical checking on the Dockerfile. The Dockerfile uses nginx 1.8-alpine image for rendering a simple HTML page which shows which type of deployment (blue or green) is being deployed.




