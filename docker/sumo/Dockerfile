FROM ubuntu:bionic

ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV SUMO_WS=/sumo_workspace
ENV CARLA_WS=/carla_workspace

RUN apt update && apt install -y git cmake python g++ libxerces-c-dev libfox-1.6-dev libgdal-dev libproj-dev libgl2ps-dev swig
  
RUN mkdir $SUMO_WS && \  
    cd $SUMO_WS && git clone https://github.com/eclipse/sumo.git && \
    cd sumo && \
    export SUMO_HOME="$PWD" && \
    mkdir build/cmake-build && cd build/cmake-build && \ 
    cmake ../.. && \
    make -j$(nproc)

RUN mkdir $CARLA_WS && \
    cd $CARLA_WS && git clone https://github.com/thillRobot/carla_simulator.git 

EXPOSE 11345

COPY ./sumo_entrypoint.sh /

ENTRYPOINT ["/sumo_entrypoint.sh"]

CMD ["bash"]

