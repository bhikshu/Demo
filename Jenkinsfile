#!groovy
pipeline {
environment {
registry = "https://hub.docker.com"
registryCredential = 'dockerhubid'
dockerImage = ''
}
    agent any

    stages {
        stage('Docker Build') { 
            steps {
              sh 'docker build -t bhikshu/devops_test1:tomcat .'
            }
        }
      stage('Deploy our image') {
       steps{
         script {
           docker.withRegistry( '', registryCredential ) {
           dockerImage.push()
}
}
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
