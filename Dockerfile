FROM python:3.8 

# Define your site version here
ENV version=1.0 
# What port to expose
ENV port=8008 
# Name your Django project here
ENV project=myserver 

# Put your mainterner name here
LABEL maintainter="HexBit AB" 
LABEL version=$version 

# Descrbie your Django project here
LABEL description="Setting up a Django on Docker installation" 

RUN apt-get update \ 
    && apt-get install -y --no-install-recommends \ 
        python3-dev default-libmysqlclient-dev build-essential \ 
    && rm -rf /var/lib/apt/lists/* 
    
WORKDIR /usr/src/app 

RUN pip3 install Django mysqlclient 
COPY startup.sh . 

VOLUME /usr/src/app/django 

EXPOSE $port/tcp 

CMD ["bash", "startup.sh"]
