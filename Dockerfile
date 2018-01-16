FROM websphere-liberty:latest
COPY daytrader3-ee6.ear /opt/ibm/wlp/usr/servers/defaultServer/dropins/
COPY server.xml /opt/ibm/wlp/usr/servers/defaultServer/
COPY derby* /opt/ibm/wlp/usr/shared/resources/Daytrader3SampleDerbyLibs/
COPY *_en /opt/ibm/wlp/usr/servers/defaultServer/lafile/
RUN installUtility install --acceptLicense defaultServer

