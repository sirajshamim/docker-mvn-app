node {
    echo "The Job name is : ${env.JOB_NAME}"
    echo "The Build no is : ${env.BUILD_NUMBER}"
    echo "The Node name is : ${env.NODE_NAME}"
    echo "The Jenkins Honme Directory is : ${env.JENKINS_HOME}"
    echo "Jenkins URL: ${env.JENKINS_URL}"
    properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '5')), [$class: 'JobLocalConfiguration', changeReasonComment: ''], pipelineTriggers([pollSCM('* * * * *')])])
    def mavenhome = tool name:'maven3.8.7'
    stage('checkout code'){
        git credentialsId: 'dfa41cc4-c9dc-4a68-89d6-bbefbb5c3665', url: 'https://github.com/asad059/maven-web-app.git'
    }
    stage('Build'){
        sh "${mavenhome}/bin/mvn clean package"
    }
    stage('Execute sonar report'){
        sh "${mavenhome}/bin/mvn clean sonar:sonar"
    }
    stage('upload to nexus repo'){
        sh "${mavenhome}/bin/mvn clean deploy"
    }
     stage('Deploy to tomcat server'){
        sshagent(['jenkinsansi']) {
    sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@172.31.11.254:/opt/apache-tomcat-9.0.83/webapps/"
}
    }
}
