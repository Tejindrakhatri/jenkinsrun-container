pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('4517b927-fe22-40a1-ad4b-1053e794620b')
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
				sh 'sudo docker login -u tejindra1 -p $tejindra1'
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
	

