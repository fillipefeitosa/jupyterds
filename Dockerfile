FROM continuumio/miniconda3

LABEL maintainer="fillipefeitosa@gmail.com"
LABEL build_date="2020-04-15T19:51:17Z"
LABEL description="Simple Jupyter Notebook with pandas"

ADD jupyter.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml

# Get the name of environment from yml file
RUN echo "source activate $(head -1 /tmp/environment.yml | cut -d' ' -f2)" > ~/.bashrc
ENV PATH /opt/conda/envs/$(head -1 /tmp/environment.yml | cut -d' ' -f2)/bin:$PATH

WORKDIR /home/jupyter

EXPOSE 8888