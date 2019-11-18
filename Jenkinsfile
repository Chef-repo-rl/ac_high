pipeline {
    agent any
    stages {
        stage('checkout git') {
            steps {
                sh "foodcritic ."
            }
        }
        stage('cookstyle') {
            steps {
                sh "cookstyle -a"
            }
        }
        stage('kitchen test') {
            steps {
                sh "kitchen converge"
            }
        }
        stage('inspec test') {
            steps {
                sh "kitchen verify"
            }
        }
        stage('berks upload') {
            steps {
                sh "berks install && berks upload"
            }
        }
    }  
}