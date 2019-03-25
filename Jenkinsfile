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

    stage('credentials') {
        steps {
	sh 'sudo apt-get install jq'
	sh 'ssh-keygen -f ubuntu -t rsa -N '''
	sh 'source .env'
        }

    }


}
}

