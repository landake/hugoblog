FROM registry.saas.hand-china.com/tools/debian:jessie 

COPY lanxiaoke/ /myblog/

ADD hugo_0.36.1_Linux-64bit.deb /tmp/hugo.deb

RUN dpkg -i /tmp/hugo.deb \ 
    && rm /tmp/hugo.deb

WORKDIR myblog/

CMD hugo

CMD  hugo server --baseUrl=192.168.99.100 --bind=0.0.0.0

EXPOSE 1313