pipeline {
  agent any
environment {
    KUBECONFIG = "/home/sbm/.kube/config"
    DOCKER_HUB_USERNAME= "firaschikhaoui"
    DOCKER_IMAGE_NAME = "usermanagment"
    DOCKER_IMAGE_TAG = "${BUILD_NUMBER}"
    //KUBERNETES_CA_CERTIFICATE = credentials('kube-certif')
  }
   stages {
    stage('Build Docker Image') {
      steps {
        script {
          docker.build("${DOCKER_HUB_USERNAME}/${DOCKER_IMAGE_NAME}:v${DOCKER_IMAGE_TAG}")
        }
      }
    }  
   stage('Push Docker Image') {
      steps {
        script {
            withDockerRegistry([credentialsId: "docker-credentials", url: ""]) {
            sh "docker push ${DOCKER_HUB_USERNAME}/${DOCKER_IMAGE_NAME}:v${DOCKER_IMAGE_TAG}"
            }
        }
      }
   }

   stage('Helm Update') {
      steps {
        script {
            withCredentials([file(credentialsId: 'kubeconfig', variable: 'KUBECONFIG')]){
//              sh "helm upgrade usermanagement usermanagement/back1 --set image.tag:v${DOCKER_IMAGE_TAG} -n helm-test"
            sh "helm upgrade usermanagement https://chikhaoui-firas99.github.io/helm-back1/back1-0.1.0.tgz --set image.tag=v${DOCKER_IMAGE_TAG} -n helm-test"
        }
       }
      }
   }

 } 
}
