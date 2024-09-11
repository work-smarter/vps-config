pipeline {
  agent any
  stages {
    stage('build docker image wt_builder') {
      steps {
        echo 'Building frontend'
        sh 'chmod +x scripts/build_docker_wt_builder.sh'
        sh 'docker build -t wt_builder -f docker/Dockerfile_wt_builder .'
      }
    }
    stage('restart caddy server with the new file') {
      steps {
        echo 'Building frontend'
        sh 'chmod +x scripts/build_docker_wt_base.sh'
        sh 'docker build -t wt_builder -f docker/Dockerfile_wt_builder .'
      }
    }
  }
}