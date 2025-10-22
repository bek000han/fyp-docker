FROM ubuntu:24.04
RUN apt update 
RUN apt upgrade -y 
RUN apt install iproute2 -y
RUN apt install iputils-ping -y
RUN apt install net-tools -y
RUN apt install tcpdump -y
RUN apt install iperf3 -y