pipeline {
  agent any
  stages {
    stage('docker test') {
      steps {
        sh 'docker --version'
      }
    }

    stage('build') {
      steps {
        script {
          docker.build("365frontend")
        }
      }
    }

    stage('deploy') {
      steps {
        sh 'chmod +x deploy.sh'
        sh './deploy.sh'
      }
    }
  }
}