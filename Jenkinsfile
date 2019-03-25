pipeline {
 agent any
 
 
 stage(‘path’) {
 steps {
 
 sh ‘source .env’
 sh 'ssh-keygen -f ubuntu'
 }
 }
 
 stage(‘infrastructure’) {
 
 steps {
 dir(‘dev’)
 {
 sh ‘terraform init’
 sh ‘terraform plan’
 // sh ‘terraform destroy -auto-approve’
 sh ‘terraform apply’
 }
 

 }
 }
 
 
 
 }


