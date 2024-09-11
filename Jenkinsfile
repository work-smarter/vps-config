pipeline {
  agent any
  stages {
    stage('build_docker_wt_base') {
      steps {
        echo 'Building frontend'
        sh 'chmod +x scripts/build_docker_wt_base.sh'
        sh 'scripts/build_docker_wt_base.sh'
      }
    }
  }
}