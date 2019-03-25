pipeline {
 agent any
 
environment {
	ACCOUNT_KEY = credentials('terraform-auth')
}

stages {

    stage('checkout') {
        steps {
            checkout scm
            sh 'mkdir -p creds'
            sh 'echo $ACCOUNT_KEY | base64 -d > ./credentials.json'
        }
    }

    stage('TF Plan') {
        steps {
	sh 'terraform init'
	sh 'terraform plan -out myplan'
        }

    }


}
}

