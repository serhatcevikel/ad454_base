# r packages
FROM gesiscss/binder-serhatcevikel-2dad454-5fbase-7021e4:fd6ab425ccb1fa7e84a2218cbc7fdb6cc9c9d873
LABEL maintainer="serhatcevikel@yahoo.com"

# Make sure the contents of our repo are in ${HOME}
COPY ./binder ${HOME}/binder

#USER ${NB_USER}
USER root

RUN \
    ## install R kernel for jupyter
    Rscript ${HOME}/binder/rpack.R && \
    rm -r ${HOME}/binder;
 
USER ${NB_USER}
WORKDIR ${HOME}
