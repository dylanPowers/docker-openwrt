FROM nmaas87/docker-openwrt:15.05.1_x64
MAINTAINER Dylan Powers <https://github.com/dylanPowers>

RUN echo 8 > /tmp/debug_level && \
    /etc/init.d/dropbear disable && \
    opkg remove dropbear && \
    /etc/init.d/telnet disable && \
    opkg update && \
    opkg install luci luci-app-ddns luci-app-upnp && \
    rm -rf /var/opkg-lists/*

COPY config /etc/config

CMD ["/sbin/init"]
