FROM ubuntu:24.04

RUN apt update 
RUN apt upgrade -y 
RUN apt install iproute2 -y
RUN apt install iputils-ping -y
RUN apt install net-tools -y
RUN apt install tcpdump -y
RUN apt install mptcpize -y
RUN apt remove iperf3 libiperf0 -y
RUN apt install libsctp1 -y
RUN apt install wget -y
RUN wget https://launchpad.net/ubuntu/+archive/primary/+files/iperf3_3.20-2_amd64.deb
RUN wget https://launchpad.net/ubuntu/+archive/primary/+files/libiperf0_3.20-2_amd64.deb
RUN dpkg -i libiperf0_3.20-2_amd64.deb iperf3_3.20-2_amd64.deb
RUN sysctl -w net.mptcp.enabled=1
