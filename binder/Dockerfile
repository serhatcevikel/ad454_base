# r packages
FROM gesiscss/binder-serhatcevikel-2dad454-5fbase-7021e4:fd6ab425ccb1fa7e84a2218cbc7fdb6cc9c9d873
LABEL maintainer="serhatcevikel@yahoo.com"

ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

# Make sure the contents of our repo are in ${HOME}
COPY ./binder ${HOME}/binder

#USER ${NB_USER}
USER root

RUN echo "jovyan:jovyan" | chpasswd && \
    usermod -aG sudo ${NB_USER}

RUN apt update && \
    apt upgrade -y && \
    apt dist-upgrade -y && \
    apt autoremove -y && \
    apt install -y \
    bc \
    csvkit \
    curl \
    htop \
    jq \
    less \
    parallel \
    screen \
    sqlite3 \
    vim \
    wget; \
    \
    # screenrc configuration
    echo "startup_message off" >> /etc/screenrc; \
    \
    # make jovyan sudoer with no password prompt
    echo "jovyan ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/jovyan;

RUN \
    # install pip packages
    pip3 install --no-cache \
        bash_kernel \
        nbpresent \
        notebook \
        quilt==2.9.15 \
        RISE \
        sos \
        sos-notebook; \
    \
    jupyter labextension install transient-display-data; \
    jupyter labextension enable transient-display-data; \
    \
    jupyter labextension install jupyterlab-sos; \
    jupyter labextension enable jupyterlab-sos;
    

RUN \
    # install xidel
    #wget "https://netcologne.dl.sourceforge.net/project/videlibri/Xidel/Xidel%200.9.8/xidel_0.9.8-1_amd64.deb" && \
    wget "https://sourceforge.net/projects/videlibri/files/Xidel/Xidel%20development/xidel_0.9.9-1_amd64.deb" && \
    dpkg -i xidel_0.9.9-1_amd64.deb && \
    rm xidel_0.9.9-1_amd64.deb;

RUN \
    ## install R kernel for jupyter
    Rscript ${HOME}/binder/rpack.R && \
    rm -r ${HOME}/binder;
 
USER ${NB_USER}

RUN \
    printf "hardstatus on\nhardstatus alwayslastline\nhardstatus string \"%%w\"\n" >> ${HOME}/.screenrc;

WORKDIR ${HOME}
