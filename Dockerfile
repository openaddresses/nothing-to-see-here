FROM ubuntu:14.04

RUN apt-get update -y && \
    apt-get install -y software-properties-common python-software-properties

RUN add-apt-repository -y ppa:openaddresses/gdal2 && \
    apt-get update -y && \
    apt-get install -y \
        libgeos-c1v5=3.5.0-1~trusty1 libgdal20=2.1.0+dfsg-1~trusty2 \
        gdal-bin=2.1.0+dfsg-1~trusty2 libgdal-dev=2.1.0+dfsg-1~trusty2

# RUN add-apt-repository -y ppa:openaddresses/postgis2 && \
#     apt-get update -y && \
#     apt-get install -y \
#         libsfcgal1=1.2.2-1~trusty2  liblwgeom-2.2-5=2.2.2+dfsg-2~trusty0 \
#         postgresql-9.3-postgis-2.2=2.2.2+dfsg-2~trusty0  postgresql-9.3-postgis-scripts=2.2.2+dfsg-2~trusty0
