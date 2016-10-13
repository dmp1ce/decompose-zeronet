FROM nofish/zeronet
MAINTAINER David Parrish <daveparrish@tutanota.com>

RUN \
    mv /root/plugins/disabled-Multiuser /root/plugins/Multiuser
