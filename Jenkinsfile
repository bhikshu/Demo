#!groovy
pipeline {
    agent any
    environment {     
    DOCKERHUB_CREDENTIALS= credentials('dockerhubid')     
  }
    stages {
        stage('Docker Build') { 
            steps {
              sh 'docker build -t bhikshu/devops_test1:tomcat .'
            }
        }
       stage('Login') {

        withDockerRegistry([ credentialsId: "dockerhubid", url: "https://hub.docker.com" ]) {
        dockerImage.push()
        }
        
		}

		stage('Push') {

			steps {
				sh 'docker push bhikshu/devops_test1:tomcat'
			}
		}    
        
        
    
 }
}   
