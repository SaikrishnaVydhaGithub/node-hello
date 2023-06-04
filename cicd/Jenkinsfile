pipeline {
    agent any

    tools {
        // Install the nodejs version configured as "nodejs" and add it to the path.
        nodejs "nodejs"
    }

    stages {
        stage('Build'){
             steps{
             //get some code from github repo
                 git 'https://github.com/SaikrishnaVydhaGithub/node-hello.git'
                 
                 //run maven on unix agent
                 sh "npm install"
             }
        }
        stage('start') {
            steps {
                sh "npm start&"
            }
        }
       
    }
}
