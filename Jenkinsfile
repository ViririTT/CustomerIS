pipeline {
   agent any

   stages {
      stage('build') {
         steps {
           echo 'building the application...'
           echo 'building the ${NEW_VERSION}'
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
