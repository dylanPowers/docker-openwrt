FROM nmaas87/docker-openwrt:15.05.1_x64
MAINTAINER Dylan Powers <https://github.com/dylanPowers>

RUN opkg update && \
    opkg install luci luci-app-ddns luci-app-upnp && \
    rm -rf /var/opkg-lists/*

COPY config /etc/config
CMD ["/sbin/init"]
