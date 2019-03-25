pipeline {
 agent any
 
stages{
 
 stage(‘path’) {
 steps {
 
 sh ‘source .env’
 sh 'ssh-keygen -f ubuntu'
 }
 }
 
 stage(‘infrastructure’) {
 
 steps {
  sh ‘terraform init’
 sh ‘terraform plan’
 sh ‘terraform apply’
 }
 

 }
 }
 
} 
 
 }


