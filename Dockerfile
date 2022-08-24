## Start with the official image (lightweight Debian) Rocker Image
ARG DOCKER_IMAGE
FROM $DOCKER_IMAGE

## gnupg is needed to add new key
RUN apt-get update && apt-get install -y gnupg2 software-properties-common libgdal-dev libproj-dev libbz2-dev

## Install Java
RUN apt-get install -y git openjdk-8-jdk wget

## make sure Java can be found in rApache and other daemons not looking in R ldpaths
RUN echo "/usr/lib/jvm/java-8-oracle/jre/lib/amd64/server/" > /etc/ld.so.conf.d/rJava.conf
RUN /sbin/ldconfig

## Install rJava package
RUN install2.r --error rJava \
  && rm -rf /tmp/downloaded_packages/ /tmp/*.rds
  
# Install Zulu CEK for OpenJDK
RUN wget http://cdn.azul.com/zcek/bin/ZuluJCEPolicies.zip \
        && echo "8021a28b8cac41b44f1421fd210a0a0822fcaf88d62d2e70a35b2ff628a8675a  ZuluJCEPolicies.zip" | sha256sum -c - \
        && unzip -oj ZuluJCEPolicies.zip ZuluJCEPolicies/local_policy.jar -d /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/ \
        && unzip -oj ZuluJCEPolicies.zip ZuluJCEPolicies/US_export_policy.jar -d /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/ \
        && rm -f ZuluJCEPolicies.zip 

RUN apt -yq update && DEBIAN_FRONTEND=noninteractive apt install -yq libpq-dev libgit2-dev libssh2-1-dev build-essential git-all libcurl4-openssl-dev libharfbuzz-dev libfribidi-dev libssl-dev libxml2-dev curl\
 libxml2-dev libdigest-hmac-perl libcairo2-dev python-dev libgeos-dev libprotobuf-dev protobuf-compiler libjq-dev sudo

COPY /miniconda.sh /miniconda.sh
RUN dos2unix /miniconda.sh
RUN chmod +x /miniconda.sh
RUN /miniconda.sh && rm /miniconda.sh

# Set R environment settings
COPY /rsettings/repos.sh /rsettings/repos.sh
RUN dos2unix /rsettings/repos.sh
RUN chmod +x /rsettings/repos.sh
RUN /rsettings/repos.sh

ARG GITHUB_PAT
RUN git config --global url."https://${GITHUB_PAT}@github.com".insteadOf "ssh://git@github.com"

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