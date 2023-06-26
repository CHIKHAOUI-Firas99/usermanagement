pipeline {
  agent any
environment {
    KUBECONFIG = "/home/sbm/.kube/kubeconfig"
    DOCKER_HUB_USERNAME= "firaschikhaoui"
    DOCKER_IMAGE_NAME = "usermanagment"
    DOCKER_IMAGE_TAG = "${BUILD_NUMBER}"
    //KUBERNETES_CA_CERTIFICATE = credentials('kube-certif')
  }
   stages {
    stage('Build Docker Image') {
      steps {
        script {
          docker.build("${DOCKER_HUB_USERNAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}")
        }
      }
    }  
   stage('Push Docker Image') {
      steps {
        script {
            withDockerRegistry([credentialsId: "docker-credentials", url: ""]) {
            sh "docker push ${DOCKER_HUB_USERNAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
            }
        }
      }
    
   }
 } 
}
