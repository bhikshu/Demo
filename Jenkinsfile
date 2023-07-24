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
			   script{
				   sh"""
				   docker login -u=bhikshu --password-stdin=Lakshmirao@10 https://hub.docker.com
                                   """
                          }
			}
		}

		stage('Push') {

			steps {
				sh 'docker push bhikshu/devops_test1:tomcat'
			}
		}    
        
        
    
 }
}   
