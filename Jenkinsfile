pipeline {
  agent any
  stages {
    stage('Pull from GitHub') {
      steps {
        git branch: 'main', url: 'https://github.com/Vishrut28/Salesforce-Clone.git'
      }
    }
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t feedback-app .'
      }
    }
    stage('Run Docker Container') {
      steps {
        sh 'docker rm -f feedback-app || true'
        sh 'docker run -d -p 3000:3000 --name feedback-app feedback-app'
      }
    }
  }
}
