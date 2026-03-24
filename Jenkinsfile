pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main',
                    url: 'PASTE_YOUR_REPO_URL_HERE'
            }
        }

        stage('Run Query') {
            steps {
                sh '''
                chmod +x scripts/run_query.sh
                ./scripts/run_query.sh
                '''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'output.txt', fingerprint: true
        }
    }
}
