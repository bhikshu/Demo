#!groovy
pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhubid')
  }
 stages{
    stage('docker build') {
      steps {
        sh 'docker build -t bhikshu/devops_test1:tomcat2 .'
      }
    } 
    
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push bhikshu/devops_test1:tomcat2'
      }
    }
  
 }
}
