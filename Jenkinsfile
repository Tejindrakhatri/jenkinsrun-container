pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('tejindra1')
	}

	stages {
	     
	    stage('gitclone') {

			steps {
				git 'https://github.com/Tejindrakhatri/jenkinsrun-container.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t tejindra1/devops:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push tejindra1/devops::latest'
			}
		}
	}
	 
		
	post {
		always {
			sh 'docker logout'
		}
	}
		}
	

