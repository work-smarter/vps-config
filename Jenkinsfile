pipeline {
  agent any
  stages {
    stage('build docker image wt_builder') {
      steps {
        sh 'chmod +x scripts/build_docker_wt_builder.sh'
        sh 'scripts/build_docker_wt_builder.sh'
      }
    }
    stage('restart caddy server with the new file') {
      steps {
        sh 'chmod +x scripts/create_caddy_image.sh'
        sh 'scripts/create_caddy_image.sh'
      }
    }
  }
}