FROM ubuntu
RUN apt update 
RUN apt upgrade -y
WORKDIR /root
RUN git clone https://github.com/hkaxcore/fig
WORKDIR /root/fig/
RUN ./install
ENTRYPOINT ["./fig"]
