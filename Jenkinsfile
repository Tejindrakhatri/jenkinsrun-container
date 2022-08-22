pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('507934cd-fdc1-4dc0-a1e1-b6f63ef8939b')
	}

	stages {
	     
	    stage('Code Checkout') {

			steps {
				checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '956db50b-297d-4797-b42f-dce67ea6a917', url: 'https://github.com/Tejindrakhatri/jenkinsrun-container.git']]])
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t tejindra1/devops:latest'
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
	

