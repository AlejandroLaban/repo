rem SET JVM_ARGS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=7777
SET JAVA_HOME=D:\TCS\Tools\jdk1.8.0_144
SET PATH=%JAVA_HOME%\bin;
cd D:\TCS\Tools\wlp-javaee7-17.0.0.3\wlp\bin
server.bat run defaultServer
pause