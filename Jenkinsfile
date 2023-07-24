#!groovy
pipeline {
    agent any 
    stages {
        stage('Docker Build') { 
            steps {
              sh 'docker build -t bhikshu/devops_test1:tomcat .'
            }
        }
       stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push bhikshu/devops_test1:tomcat'
			}
		}    
        
        
    
 }
}   
