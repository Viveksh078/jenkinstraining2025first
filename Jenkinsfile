pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Viveksh078/jenkinstraining2025first.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t firstproject-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f firstproject-container || true'
                sh 'docker run -d -p 8888:80 --name firstproject-container firstproject-app'
            }
        }
    }
}
