FROM ubuntu:xenial
MAINTAINER Robert Jacob <xperimental@solidproject.de>

RUN apt-get update \
 && apt-get install -y libx11-6 libsdl1.2debian libsdl-mixer1.2 libsdl-image1.2 libgl1-mesa-glx \
 && apt-get clean

ADD http://downloads.sourceforge.net/project/sauerbraten/sauerbraten/2013_01_04/sauerbraten_2013_02_03_collect_edition_linux.tar.bz2?r=http%3A%2F%2Fcubeengine.com%2Ffiles.php&ts=1467054652&use_mirror=netcologne /usr/local/

WORKDIR /usr/local/sauerbraten/

EXPOSE 28784/udp 28785/udp 28786/udp

CMD [ "./sauerbraten_unix", "-d" ]
