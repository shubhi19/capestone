node {
  def blue_deployment_var = 'shubhi19/capstone-blue'
  def green_deployment_var = 'shubhi19/capstone-green'

  stage('SCM CHECKOUT') {
    echo 'Checking out code from Github'
    checkout scm
  }
  stage("LINT ") {

    echo 'Linting dockerfiles'
    sh 'hadolint blue/Dockerfile'
    sh 'hadolint green/Dockerfile'

  }
  stage('BUILD BLUE IMAGE') {
    echo 'Building Blue Deployment Docker Image'
    withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
      sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
      sh "docker build -t ${blue_deployment_var} blue/."
      sh "docker tag ${blue_deployment_var} ${blue_deployment_var}"
      sh "docker push ${blue_deployment_var}"
    }
    echo 'Blue Deployment Docker Image build complete!'
  }
  stage('BUILD GREEN IMAGE') {
    echo 'Building Green Deployment Docker Image'
    withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
      sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
      sh "docker build -t ${green_deployment_var} green/."
      sh "docker tag ${green_deployment_var} ${green_deployment_var}"
      sh "docker push ${green_deployment_var}"
    }
    echo 'Green Deployment Docker Image build complete!'
  }
  stage('AWS ELASTIC KUBERNETES DEPLOYMENT') {
    echo 'AWS EKS Deployment Step'
    dir('./') {
      withAWS(credentials: 'capestone-user', region: 'us-east-2') {
        sh "aws eks --region us-east-2 update-kubeconfig --name bn-prod"
        sh "kubectl apply -f blue/blue-controller.json"
        sh "kubectl apply -f green/green-replication-controller.json"
        sh "kubectl apply -f ./service.json"
        sh "kubectl get nodes"
        sh "kubectl get pods"
        sh "kubectl get svc"
      }
    }
  }
}
