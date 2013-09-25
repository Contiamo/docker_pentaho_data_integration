FROM base
MAINTAINER dmahlow@gmail.com

RUN apt-get update
RUN apt-get -y install openjdk-6-jre-headless unzip

ADD http://ci.pentaho.com/view/Data%20Integration/job/Kettle/lastSuccessfulBuild/artifact/Kettle/assembly/dist/pdi-ce-TRUNK-SNAPSHOT.zip /root/

RUN mkdir /root/pdi
RUN unzip /root/pdi-ce-TRUNK-SNAPSHOT.zip -d /root/pdi
