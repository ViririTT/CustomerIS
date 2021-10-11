pipeline {
   agent any

   stages {
      stage('Build') {
         steps {
            sh 'rm -rf build' 
            sh 'mkdir build' // create a new folder
            sh 'touch build/car.txt' // create an empty file
            sh 'echo "chassis" >> build/car.txt' // put chassis inside the file
            sh 'echo "engine" >> build/car.txt' // put engine inside the file
            sh 'echo "body" >> build/car.txt' // put body inside the file
         }
      }
      stage('Test') {
         steps {
            sh 'test -f build/car.txt'
            sh 'grep "chassis" build/car.txt'
            sh 'grep "engine" build/car.txt'
            sh 'grep "body" build/car.txt'
         }
      }
      stage('Publish') {
          steps {
            archiveArtifacts artifacts: 'build/'
          }
      }      
   }
}
