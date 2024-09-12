pipeline {
  agent any
  stages {
    stage('Build docker image wt_builder') {
      steps {
        sh 'docker build -t wt_builder -f docker/Dockerfile_wt_builder .'
      }
    }
  }
}
