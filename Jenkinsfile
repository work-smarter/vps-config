pipeline {
  agent any
  stages {
    stage('Build docker image wt_builder') {
      steps {
        sh 'chmod +x scripts/build_wt_builder.sh'
        sh './scripts/build_wt_builder.sh'
      }
    }
  }
}
