# Use an official Python runtime as a parent image
FROM ubuntu:16.04

# Set the working directory to /app
#WORKDIR /app

# Copy the current directory contents into the container at /app
#ADD . /app

# Install any needed packages specified in requirements.txt


RUN apt-get update && \
      apt-get -y install sudo

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y git 

RUN git clone https://github.com/mpatacchiola/deepgaze.git
#RUN git clone https://github.com/rymizak/CE202.git
#RUN git clone https://github.com/andikleen/pmu-tools.git

RUN apt install -y  python2.7 python-pip
#RUN apt install -y linux-tools-generic
#RUN sudo sh -c 'echo -1 >/proc/sys/kernel/perf_event_paranoid'
#RUN sudo sh -c 'echo 0 >/proc/sys/kernel/nmi_watchdog'


#RUN apt-get install -y linux-tools-common gawk

RUN pip install numpy
RUN apt-get install -y libopencv-dev python-opencv
RUN pip install tensorflow
#RUN apt-get -y install r-base
RUN ls ./deepgaze
RUN cd ./deepgaze && \
	python ./setup.py install

#RUN apt install -y linux-tools-generic
#RUN apt install -y linux-cloud-tools-generic

RUN apt-get install -y parallel

ARG CACHE_DATE=2018-11-16

RUN git clone https://github.com/rymizak/CE202.git

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

#RUN cd ./CE202
#CMD ls
CMD ["bash", "./CE202/run2.sh"]

