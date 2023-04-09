FROM ubuntu
RUN apt update 
RUN apt upgrade -y
RUN apt install git -y
WORKDIR /root
RUN git clone https://github.com/hakxcore/fig
WORKDIR /root/fig/
RUN ./install
ENTRYPOINT ["./fig"]
