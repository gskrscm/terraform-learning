node{
properties([parameters([choice(choices: ['init', 'plan', 'apply -auto-approve', 'destroy'], description: 'terraform commands', name: 'terraform')])])
    
    stage('Git Clone'){
        git 'https://github.com/gskrscm/terraform-learning.git'
    }
    stage('terraform - dev plan') {
        sh "cd dev;terraform ${terraform}"
    }
}