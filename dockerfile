FROM docker.io/yottadb/yottadb-base:r1.32
RUN ln -s /opt/yottadb/current/ydb /usr/local/bin/ydb \
    && ln -sf /bin/bash /bin/sh \
    && apt-get update \
    && apt-get install -y git \
    && cd /usr/local && git clone https://github.com/informatik-aalen/GTMQTT.git \
    && apt-get remove -y git \
    && apt clean
RUN bash -c 'cd /opt/yottadb/current && ./ydb <<< "H"' && cp /usr/local/GTMQTT/src/MQTT.m /data/r1.32_x86_64/r && bash -c 'cd /opt/yottadb/current && ./ydb <<< "ZL \"MQTT.m\""' && cd /opt/yottadb/current && ./ydb

