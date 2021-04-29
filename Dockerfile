FROM odysseusinc/r-java:4.0.5

ARG  GITHUB_PAT

RUN apt -yq update && DEBIAN_FRONTEND=noninteractive apt install -yq libpq-dev build-essential git-all libcurl4-openssl-dev libssl-dev libxml2-dev curl\
 libxml2-dev libdigest-hmac-perl libcairo2-dev python-dev libgeos-dev libprotobuf-dev protobuf-compiler libjq-dev sudo python3-pip python3-dev python3-venv

## Set 3.8 as a default
RUN rm -f /usr/bin/python3 && ln -s /usr/bin/python3.8 /usr/bin/python3
ENV PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig
RUN ln -s /usr/lib/x86_64-linux-gnu/pkgconfig/python3.pc /usr/lib/x86_64-linux-gnu/pkgconfig/python.pc

RUN python3 -m pip install -U pip

RUN python3 -m pip install virtualenv
RUN python3 -m pip install -U NumPy
RUN python3 -m pip install -U SciPy
RUN python3 -m pip install -U scikit-learn
RUN python3 -m pip install -U torch
RUN python3 -m pip install -U tensorflow
RUN python3 -m pip install keras

ENV USESPECIALPYTHONVERSION=python3.8

# Set R environment settings
COPY /rsettings/repos.sh /rsettings/repos.sh
RUN chmod +x /rsettings/repos.sh
RUN /rsettings/repos.sh

COPY /rsettings/github_authentication.sh /rsettings/github_authentication.sh
RUN chmod +x /rsettings/github_authentication.sh
RUN /rsettings/github_authentication.sh $GITHUB_PAT

# Detect current Java setup and update the corresponding configuration in R
RUN R CMD javareconf

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
