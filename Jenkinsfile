pipeline {
  agent any
  stages {
    stage('build docker image wt_builder') {
      steps {
        echo 'build docker image wt_builder'
        sh 'chmod +x scripts/build_docker_wt_builder.sh'
        sh 'scripts/build_docker_wt_builder.sh'
      }
    }
    stage('restart caddy server with the new file') {
      steps {
        echo 'restart caddy server with the new file'
        sh 'chmod +x scripts/build_docker_wt_base.sh'
        sh 'scripts/build_docker_wt_base.sh'
      }
    }
  }
}