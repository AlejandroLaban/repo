export MAVEN_HOME=/d/Tools/apache-maven-3.5.2
export JAVA_HOME=/d/Tools/Java/jdk1.8.0_161_x86
export PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH


export MAVEN_OPTS="-client -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
export T="-T 1C"

export CURRENT_PATH=${PWD}


printf "start $(date) \r\n"  >> maven_log.log

#cd /d/dev/ibk/digital-channels-core/digital-channels-core-pom
#mvn -T 1C clean install -DskipTests

#cd /d/dev/ibk/digital-channels-mq/digital-channels-mq-pom
#mvn -T 1C clean install -DskipTests

#cd /d/dev/ibk/digital-channels-proxy/digital-channels-proxy-pom
#mvn -T 1C clean install -DskipTests

cd /d/dev/ibk/interbank-common-application-architecture/icaa-core-parent
mvn -T 1C clean install -DskipTests

cd /d/dev/ibk/bpi-web-app/bpi-web-app-parent
mvn -T 1C clean install -DskipTests

cd $CURRENT_PATH
printf  "end $(date) \r\n"  >> maven_log.log

mkdir -p /d/dev/ibk/output
cp /d/dev/ibk/bpi-web-app/bpi-web-app-parent/target/dist/bpi-api-1.0.0.war /d/dev/ibk/output