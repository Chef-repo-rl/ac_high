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
            try {
                sh "cookstyle -a"
            } catch (Exception e) {
            status = -1
            }

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