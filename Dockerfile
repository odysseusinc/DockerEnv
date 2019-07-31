FROM odysseusinc/r-java:3.5.3

RUN apt -yq update && DEBIAN_FRONTEND=noninteractive apt install -yq libpq-dev build-essential git-all libcurl4-openssl-dev libssl-dev libxml2-dev curl\
 libxml2-dev libdigest-hmac-perl libcairo2-dev python-dev libgeos-dev libprotobuf-dev protobuf-compiler libjq-dev python3-dev python3-pip
# r-cran-xml r-cran-rodbc gcc make libssh-dev

RUN pip3 install virtualenv
RUN pip3  install --upgrade pip

ENV USESPECIALPYTHONVERSION=python3.5

COPY libs.r libs.r
RUN Rscript libs.r

WORKDIR "/workdir"
