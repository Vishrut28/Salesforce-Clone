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
        sh 'docker build -t salesforce-clone .'
      }
    }
    stage('Run Docker Container') {
      steps {
        sh 'docker rm -f salesforce-clone || true'
        sh 'docker run -d -p 3000:80 --name salesforce-clone salesforce-clone'
      }
    }
  }
}
