FROM alpine:latest

### Env var and cmd line arguments####
ARG srvd=/var/www
ARG payload=test.py
######################################

### webserverver filesystem
RUN mkdir ${srvd}
#####################################

RUN apk add py3-gunicorn  &&apk cache clean

#RUN git clone ${repo}

ADD gunicorn.conf.py /etc
ADD ${payload} init.py ${srvd}

WORKDIR ${srvd}



CMD [ "gunicorn", "-c","/etc/gunicorn.conf.py", "init:create_app()" ]

