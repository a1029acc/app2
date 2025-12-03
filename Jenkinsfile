pipeline {
    agent any
    environment {
        DOCKER_USER_NAME="somemone15me"
        DOCKER_IMAGE_NAME="someone15me/pythonapp"
        DOCKER_AUTH_TOKEN= credentials('DOCKER_AUTH_TOKEN')
    }

    stages {
        stage('scm') {
            steps {
                echo "already taken care by Jenkins"
            }
        }

        stage('prepare env') {
            steps {
                // execute a shell command
                sh 'pip3 install --break-system-package -r requirements.txt '
            }
        }

        stage('test the application') {
            steps {
                sh 'export PATH=$PATH:/home/vagrant/.local/bin'
                sh 'pytest test_app.py'
            }
        }

        stage('prepare the image') {
            steps{
                sh 'docker image build -t ${DOCKER_IMAGE_NAME} .'
            }
        }
        
    }
}
