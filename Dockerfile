FROM odysseusinc/r-java:3.5.3

RUN apt -yq update && DEBIAN_FRONTEND=noninteractive apt install -yq libpq-dev build-essential git-all libcurl4-openssl-dev libssl-dev libxml2-dev curl\
 libxml2-dev libdigest-hmac-perl libcairo2-dev python-dev libgeos-dev libprotobuf-dev protobuf-compiler libjq-dev python-pip-whl sudo
# r-cran-xml r-cran-rodbc gcc make libssh-dev
#
# Installing Python 3.6
#
COPY python_packages.txt python_packages.txt
RUN cat python_packages.txt | xargs -I pkg wget https://github.com/chriskuehl/python3.6-debian-stretch/releases/download/v3.6.3-1-deb9u1/pkg.deb && dpkg -i *.deb && rm -f *.deb && rm -f python_packages.txt
RUN curl https://bootstrap.pypa.io/get-pip.py | sudo -H python3.6
# Set 3.6 as a default
RUN rm -f /usr/bin/python3 && ln -s /usr/bin/python3.6 /usr/bin/python3

RUN python3 -m pip install virtualenv && \
    python3 -m pip install -U NumPy && \
    python3 -m pip install -U SciPy && \
    python3 -m pip install -U scikit-learn && \
    python3 -m pip install -U torch && \
    python3 -m pip install --upgrade tensorflow && \
    python3 -m pip install keras

ENV USESPECIALPYTHONVERSION=python3.6
RUN apt-get install -y libssh-dev

# Copy and install one-by-one to take advantage of Docker layers

COPY /libs/libs_1.r /libs/libs_1.r
RUN Rscript /libs/libs_1.r

COPY /libs/libs_2.r /libs/libs_2.r
RUN Rscript /libs/libs_2.r

COPY /libs/libs_3.r /libs/libs_3.r
RUN Rscript /libs/libs_3.r

COPY /libs/libs_4.r /libs/libs_4.r
RUN Rscript /libs/libs_4.r

COPY /libs/libs_5.r /libs/libs_5.r
RUN Rscript /libs/libs_5.r

COPY /libs/libs_6.r /libs/libs_6.r
RUN Rscript /libs/libs_6.r

WORKDIR "/workdir"
