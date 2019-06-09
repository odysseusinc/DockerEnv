FROM odysseusinc/r-java:3.5.3

RUN apt update && apt install -y libpq-dev build-essential git-all libcurl4-openssl-dev libssl-dev libxml2-dev curl libxml2-dev libdigest-hmac-perl libcairo2-dev python-dev python3-dev python3-pip
# r-cran-xml r-cran-rodbc gcc make libssh-dev

RUN pip3 install virtualenv
RUN pip3 install --upgrade pip
RUN pip3 install -U NumPy
RUN pip3 install -U SciPy
RUN pip3 install -U scikit-learn
RUN pip3 install -U torch
RUN pip3 install --upgrade tensorflow
RUN pip3 install keras

COPY libs.r libs.r
RUN Rscript libs.r

RUN rm -fr /var/cache/apt

ENV USESPECIALPYTHONVERSION=python3.5

WORKDIR "/workdir"
