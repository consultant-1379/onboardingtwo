stage('Compile'){
    node('master') {
        checkout scm
        def mvnHome = tool 'maven-3'
        sh "${mvnHome}/bin/mvn clean install -DskipTests"
        stash 'working-copy'
    }
}

stage('Test') {
    parallel one: {
        node('master') {
            unstash 'working-copy'
            def mvnHome = tool 'maven-3'
            sh "${mvnHome}/bin/mvn test -Diterations=10"
        }
    }, two: {
        node('master') {
            unstash 'working-copy'
            def mvnHome = tool 'maven-3'
            sh "${mvnHome}/bin/mvn test -Diterations=5"
        }
    }, failFast: true
}

stage('Code Quality') {
    node('master') {
        unstash 'working-copy'
        echo "CHECKING CODE"
    }
}
