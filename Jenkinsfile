pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Vishrut28/Salesforce-Clone.git'
            }
        }

        stage('Upload to S3') {
            steps {
                withAWS(region: 'ap-south-1', credentials: '27c271db-47ee-4776-a992-924334954c20') {
                    sh 'aws s3 sync . s3://salesforce-clone-vishrut/ --exclude "terraform/*" --exclude "Jenkinsfile" --acl public-read'
                }
            }
        }
    }
}
