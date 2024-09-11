pipeline {
  agent any
  stages {
    stage('build docker image wt_builder') {
      steps {
        // sh 'chmod +x scripts/build_docker_wt_builder.sh'
        sh 'docker build -t wt_builder -f docker/Dockerfile_wt_builder .'
      }
    }
    stage('restart caddy server with the new file') {
      steps {
        // sh 'chmod +x scripts/create_caddy_image.sh'
        sh 'docker build -t my_caddy -f docker/Dockerfile_caddy .'
      }
    }
  }
}