pipeline{
    environment {
    imagename = "viriritt/docker-jenkins"
    registryCredential = 'viriritt'
    dockerImage = ''
        }
   agent any


   stages {
      stage('build') {
          steps{
        script {
          dockerImage = docker.build imagename
         }
        }
      }
      stage('test') {
         steps {
            echo 'testing the application....'
            echo 'testing the ${NEW_VERSION}'

         }
      }
      stage('Publish') {
          steps {
            echo 'deploying the application.....testing now'
            echo 'deploying the ${NEW _VERSION}'
          }
      }      
   }
}
