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
        sh 'docker stop my-caddy'
        sh 'docker rm my-caddy'
        sh 'docker run -d -p 80:80 -v /var/run/docker.sock:/var/run/docker.sock --name my-caddy my_caddy'
      }
    }
  }
}