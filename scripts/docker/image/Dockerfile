FROM websphere-liberty:latest

#CONFIG
COPY files/wlp-config/server.xml /config

#CERT
COPY files/wlp-config/key.jks /opt/ibm/wlp/output/defaultServer/resources/security/key.jks
COPY files/wlp-config/ltpa.keys /opt/ibm/wlp/output/defaultServer/resources/security/ltpa.keys

COPY files/wlp-config/keystore.xml	/config/configDropins/defaults/keystore.xml

#APP
COPY files/output/war /config/war

#Shared libraries
COPY files/output/libs /config/libs

#ORACLE DRIVER
COPY files/driver	/config/driver

#CONFIG
COPY files/output/config	/