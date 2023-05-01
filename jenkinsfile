pipeline {
    agent {
        docker {
            image 'python'
        }
    }

    stages {
        stage('Build') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('API Test') {
            steps {
                sh 'robot -d ./logs tests/api'
            }
        }
    }
}
