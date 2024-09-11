pipeline {
  agent any
  stages {
    stage('Build docker image wt_builder') {
      steps {
        sh 'docker build -t wt_builder -f docker/Dockerfile_wt_builder .'
      }
    }
    stage('Restart caddy server with the new file') {
      steps {
        sh 'docker build -t my_caddy -f docker/Dockerfile_caddy .'
        sh 'docker ps -q --filter "name=my_caddy" | xargs -r docker stop'
        sh 'docker rm -f my_caddy || true'
        sh 'docker run -d -p 80:80 -v /var/run/docker.sock:/var/run/docker.sock --name my_caddy my_caddy'
      }
    }
  }
}