# r packages
FROM gesiscss/binder-serhatcevikel-2dad454-5fbase-7021e4:1376d801a3420e418d043c4b45e02c8ba13f98c6
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
