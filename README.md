### run Tomcat
/Library/Tomcat/bin/startup.sh
/Library/Tomcat/bin/shutdown.sh

docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins

