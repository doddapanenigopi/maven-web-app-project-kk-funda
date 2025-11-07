node {

    // 🌿 Basic environment info
    echo "Git branch name   : ${env.BRANCH_NAME}"
    echo "Build number      : ${env.BUILD_NUMBER}"
    echo "Running on node   : ${env.NODE_NAME}"

    // 🧰 Define Maven tool (must exist under Manage Jenkins → Tools)
    def mavenHome = tool name: "Maven-3.9.11"

    try {
        notifyBuild('Started')
        // ===============================
        // 1️⃣ GIT CHECKOUT
        // ===============================
        stage('Git Checkout') {
            echo "📦 Checking out source code from GitHub..."
            git branch: 'development',
            credentialsId: 'cd306eb7-b03b-4cf3-a96b-de0d71c10862',
            url: 'https://github.com/doddapanenigopi/maven-web-app-project-kk-funda.git'
        }

        // ===============================
        // 2️⃣ COMPILE
        // ===============================
        stage('Compile') {
            echo "⚙️ Compiling code..."
            sh "${mavenHome}/bin/mvn compile"
        }

        // ===============================
        // 3️⃣ BUILD PACKAGE
        // ===============================
        stage('Build') {
            echo "🏗️ Building WAR file..."
            sh "${mavenHome}/bin/mvn clean package"
        }

        // ===============================
        // 4️⃣ SONARQUBE REPORT
        // ===============================
        stage('SonarQube Report') {
            echo "🔍 Running SonarQube analysis..."
            // Ensure SonarQube server + credentials configured in Jenkins
            sh "${mavenHome}/bin/mvn sonar:sonar"
        }

        // ===============================
        // 5️⃣ DEPLOY INTO NEXUS
        // ===============================
        stage('Deploy into Nexus') {
            echo "📤 Uploading artifacts to Nexus..."
            sh "${mavenHome}/bin/mvn clean deploy"
        }

        // ===============================
        // 6️⃣ DEPLOY TO TOMCAT
        // ===============================
        stage('Deploy to Tomcat') {
            echo "🚀 Deploying WAR file to Tomcat using curl..."

            sh """
                curl -f -v -u "kkfunda:password" \
            --upload-file target/maven-web-application.war \
            "http://3.107.193.216:8080/manager/text/deploy?path=/maven-web-application&update=true"
            """
            echo "✅ Deployment completed successfully!"
        }

        // ✅ If everything passed
        currentBuild.result = "SUCCESS"

    } catch (e) {
        // ❌ Handle failures gracefully
        currentBuild.result = "FAILED"
        echo "❌ Pipeline failed: ${e}"
        throw e

    } finally {
        // 📣 Always send Slack notification at the end
        notifyBuild(currentBuild.result)
    }
}

//
// =======================================
// 🔔 SLACK NOTIFICATION FUNCTION
// =======================================
def notifyBuild(String buildStatus = 'STARTED') {

    // Default to SUCCESS if null
    buildStatus = buildStatus ?: 'SUCCESS'

    // Prepare message content
    def colorCode = '#FF0000' // Red
    if (buildStatus == 'STARTED') {
        colorCode = '#FFFF00' // Yellow
    } else if (buildStatus == 'SUCCESS') {
        colorCode = '#00FF00' // Green
    }

    def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
    def summary = "${subject} - ${env.BUILD_URL}"

    // ✅ Send Slack message
    slackSend (
        color: colorCode,
        message: summary
    )

    // Also print to Jenkins console
    echo "📢 Slack notification sent with status: ${buildStatus}"
}
