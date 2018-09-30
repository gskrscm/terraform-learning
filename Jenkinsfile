node{
    stage('Git Clone'){
        git 'https://github.com/gskrscm/terraform-learning.git'
    }
    stage('terraform - dev plan') {
        sh 'cd dev;terraform init'
        sh 'cd dev;terraform plan'
    }
    stage('terraform - dev apply'){
        sh 'cd dev;terraform apply'
    }
}