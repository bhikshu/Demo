#!groovy
pipeline {
    agent any 
    stages {
        stage('Docker Build') { 
            steps {
              sh 'docker build -t bhikshu/devops_test1:tomcat .'
            }
        }
        stage('push') { 
            steps {
            script{docker.withRegistry('https://hub.docker.com/','dockerhubid') 
            image.push()
                
            }
        }
        
    }
}
