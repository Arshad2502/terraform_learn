pipeline {
    agent { label 'win_slave' }

    tools {
        terraform 'terraform'
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/Arshad2502/terraform_learn.git', branch: 'main'
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                bat 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                bat 'terraform apply -auto-approve tfplan'
            }
        }

        stage('Verify Files and Folders') {
            steps {
                bat '''
                    if exist file1.txt (
                        echo file1.txt exists
                    ) else (
                        echo file1.txt missing
                        exit /b 1
                    )
                    if exist file2.txt (
                        echo file2.txt exists
                    ) else (
                        echo file2.txt missing
                        exit /b 1
                    )
                    if exist dir1\\ (
                        echo dir1 exists
                    ) else (
                        echo dir1 missing
                        exit /b 1
                    )
                    if exist dir2\\ (
                        echo dir2 exists
                    ) else (
                        echo dir2 missing
                        exit /b 1
                    )
                '''
            }
        }
    }
}
