pipeline {
    agent any
    environment {
        PROJECT_ID = 'blissful-glass-271719'
        CLUSTER_NAME = 'kube-basic'
        LOCATION = 'us-central1-c'
        CREDENTIALS_ID = 'kuberneteslogin'
    }
    stages {
        stage("Checkout code") {
            steps {
                checkout scm
            }
        }
		 stage("Build") {
            steps {
               echo "cleaning and packaging"
			   sh 'mvn clean package'
            }
        }
		 stage("Test") {
            steps {
                echo "Testing"
			   sh 'mvn test'
            }
        }
	     stage("Deploy") {
            steps {
                echo "Deploying to Tomcat8"
			   sh 'mvn tomcat7:deploy'
            }
        }
        }           
}
