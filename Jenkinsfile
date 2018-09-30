node{
properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '5', numToKeepStr: '5'))])
properties([parameters([choice(choices: ['init', 'plan', 'apply -auto-approve', 'destroy -auto-approve'], description: 'terraform commands', name: 'terraform')])])
    stage('Git Clone'){
        git 'https://github.com/gskrscm/terraform-learning.git'
    }
    stage('terraform - dev plan') {
        sh "cd dev;terraform ${terraform}"
    }
}