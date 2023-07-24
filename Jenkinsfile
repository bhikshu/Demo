#!groovy

pipeline {
	agent none  stages {
    stage('Docker Build') {
    	agent any
      steps {
      	sh 'docker build -t bhikshu/devops_test1:tomcat .'
      }
    }
   stage('push') {
        docker.withRegistry('https://hub.docker.com/',
                            'dockerhubid') {
            image.push()
     }
    }
  }
}
