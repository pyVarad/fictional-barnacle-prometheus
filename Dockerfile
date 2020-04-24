FROM ubuntu:latest
RUN apt-get -y  update && \
    apt-get -y install git && \
    apt-get -y install curl && \
    apt-get -y install wget && \
    apt-get install -y systemctl && \
    apt-get install -y vim
WORKDIR /prometheus-course
RUN git clone https://github.com/in4it/prometheus-course.git
RUN ./prometheus-course/scripts/1-install.sh
RUN ./prometheus-course/scripts/2-node-exporter.sh
CMD ["systemctl", "start", "prometheus"]
