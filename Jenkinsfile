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

			steps {
                          sh 'echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'                 
	                  echo 'Login Completed'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push bhikshu/devops_test1:tomcat'
			}
		}    
        
        
    
 }
}   
