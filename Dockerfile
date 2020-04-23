FROM python:3.7
LABEL maintainer="Eugene Ilyushin <john.ilyushin@gmail.com>"

RUN pip3 install jupyterhub jupyter

# create a user, since we don't want to run as root
RUN useradd -m jovyan
ENV HOME=/home/jovyan
WORKDIR $HOME
USER jovyan
RUN mkdir /home/jovyan/work

CMD ["jupyterhub-singleuser"]