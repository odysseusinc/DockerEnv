FROM odysseusinc/r-java:3.5.3

RUN apt -yq update && DEBIAN_FRONTEND=noninteractive apt install -yq libpq-dev build-essential git-all libcurl4-openssl-dev libssl-dev libxml2-dev curl\
 libxml2-dev libdigest-hmac-perl libcairo2-dev python-dev libgeos-dev libprotobuf-dev protobuf-compiler libjq-dev python3-dev python3-pip
# r-cran-xml r-cran-rodbc gcc make libssh-dev

RUN pip3 install virtualenv
RUN pip3  install --upgrade pip

ENV USESPECIALPYTHONVERSION=python3.5

# Copy and install one-by-one to take advantage of Docker layers

COPY libs_1.r /libs/libs_1.r
RUN Rscript /libs/libs_1.r

COPY libs_2.r /libs/libs_2.r
RUN Rscript /libs/libs_2.r

COPY libs_3.r /libs/libs_3.r
RUN Rscript /libs/libs_3.r

COPY libs_4.r /libs/libs_4.r
RUN Rscript /libs/libs_4.r

COPY libs_5.r /libs/libs_5.r
RUN Rscript /libs/libs_5.r

COPY libs_6.r /libs/libs_6.r
RUN Rscript /libs/libs_6.r

WORKDIR "/workdir"
