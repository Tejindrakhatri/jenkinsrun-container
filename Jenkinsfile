pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-hub-tejindra1')
	}

	stages {
	     
	    stage('Code Checkout') {

			steps {
				checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '956db50b-297d-4797-b42f-dce67ea6a917', url: 'https://github.com/Tejindrakhatri/jenkinsrun-container.git']]])
			}
		}

		stage('Build') {

			steps {
				sh 'sudo docker build -t tejindra-devops6 -f Dockerfile .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
		stage('Run') {
			steps {
				sh 'echo sudo docker run -d -p 8080:8085 --name tejindra-devops6 tejindra-devops6'
			}
		}

		stage('Push') {

			steps {
				sh 'sudo docker push tejindra1/devops'
			}
		}
	}
	 
		
	post {
		always {
			sh 'docker logout'
		}
		
	}
		}
	

