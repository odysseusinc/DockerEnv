FROM odysseusinc/r-java:4.1.1

ARG GITHUB_PAT

RUN apt -yq update && DEBIAN_FRONTEND=noninteractive apt install -yq libpq-dev libgit2-dev libssh2-1-dev build-essential git-all libcurl4-openssl-dev libssl-dev libxml2-dev curl\
 libxml2-dev libdigest-hmac-perl libcairo2-dev python-dev libgeos-dev libprotobuf-dev protobuf-compiler libjq-dev sudo dos2unix libharfbuzz-dev libfribidi-dev \
 libopenblas-dev

COPY /miniconda.sh /miniconda.sh
RUN dos2unix /miniconda.sh
RUN chmod +x /miniconda.sh
RUN /miniconda.sh && rm /miniconda.sh

# Set R environment settings
COPY /rsettings/repos.sh /rsettings/repos.sh
RUN dos2unix /rsettings/repos.sh
RUN chmod +x /rsettings/repos.sh
RUN /rsettings/repos.sh

COPY /rsettings/github_authentication.sh /rsettings/github_authentication.sh
RUN chmod +x /rsettings/github_authentication.sh
RUN /rsettings/github_authentication.sh $GITHUB_PAT
RUN rm -fr /rsettings

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

COPY /libs/libs_7.r /libs/libs_7.r
RUN Rscript /libs/libs_7.r

WORKDIR "/workdir"
