FROM rockylinux:8.5.20220308


LABEL maintainer="howhow  -> https://how64bit.com"
USER root
COPY ./google-cloud.repo /etc/yum.repos.d/
RUN dnf install google-cloud-cli -y &&\
    mkdir -p /root/lab
WORKDIR /root/lab/
COPY ./login /root/lab
RUN chmod +x login && dnf clean all && rm -fr /var/cache

CMD ["tail","-f","/dev/null"]