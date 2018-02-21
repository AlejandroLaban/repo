export MAVEN_HOME=/d/Tools/apache-maven-3.5.2
export JAVA_HOME=/d/Tools/Java/jdk1.8.0_161
export PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH


export JAR_GROUP=com.ibm.mq
export JAR_NAME=allclient
export TYPE=jar
export JAR_PATH=/d/Tools/8.0.0.8-WS-MQC-Redist-Java/java/lib/$JAR_GROUP.$JAR_NAME.$TYPE

mvn install:install-file -Dfile=$JAR_PATH -DgroupId=$JAR_GROUP \
    -DartifactId=$JAR_NAME -Dversion=8.0.0.8 -Dpackaging=$TYPE