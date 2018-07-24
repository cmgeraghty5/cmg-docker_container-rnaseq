FROM continuumio/miniconda3:4.5.4

RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda

RUN conda install -y star

RUN conda install -y multiqc

RUN conda install -y trim-galore

RUN conda install -y subread

RUN conda install -y fastqc

RUN ln -s /path/to/file /path/to/symlink


## create simlink to star -> so you only have to type 'star' instead of 'STAR'
