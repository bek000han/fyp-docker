FROM ubuntu:24.04

RUN apt update 
RUN apt upgrade -y 
RUN apt install iproute2 -y
RUN apt install iputils-ping -y
RUN apt install net-tools -y
RUN apt install tcpdump -y
RUN apt install iperf3 -y



######## INSTALL IPERF3 3.20.2 #########
# Install the dependency: sudo apt install libsctp1
# Take a recent Ubuntu distribution from https://launchpad.net/ubuntu/+source/iperf3
# Download iperf3_3.xx-1_amd64.deb and libiperf0_3.xx-1_amd64.deb packages (use amd64 version for a standard version of Ubuntu)
# Install downloaded packages: sudo dpkg -i libiperf0_3.xx-1_amd64.deb iperf3_3.xx-1_amd64.deb
# Remove downloaded packages that are now unnecessary: rm libiperf0_3.xx-1_amd64.deb iperf3_3.xx-1_amd64.deb