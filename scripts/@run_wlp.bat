SET JVM_ARGS=%JVM_ARGS% -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=7777
SET JVM_ARGS=%JVM_ARGS% -Dlogback.configurationFile=C:\apps\digital-channels\bpi\api\conf\logback.xml
REM SET spring.profiles.active=dev
SET JAVA_HOME=D:\Tools\Java\jdk1.8.0_121
SET PATH=%JAVA_HOME%\bin;
cd D:\Tools\wlp-javaee7-17.0.0.3\wlp\bin
server.bat run defaultServer
pause