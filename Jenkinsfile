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
        sh "export DOCKER_SOCK_GROUP_ID=\$(stat -c '%g' /var/run/docker.sock) && docker-compose -f docker-compose.yml down && docker-compose -f docker-compose.yml up -d"
      }
    }
  }
}
