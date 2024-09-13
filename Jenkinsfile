pipeline {
  agent any
  stages {
    stage('Build docker image wt_builder') {
      steps {
        sh 'chmod +x scripts/build_wt_builder.sh'
        sh './scripts/build_wt_builder.sh'
      }
    }
    stage('Re/Deploy docker compose file with caddy, jenkins and portainer') {
      steps {
        sh 'docker-compose -f docker-compose.yml down && docker-compose -f docker-compose.yml up -d'
      }
    }
  }
}
