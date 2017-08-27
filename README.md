OpenWrt in Docker
==================

(based off of nmaas87/docker-openwrt:15.05.1_x64)

This just adds some config tweaks and a docker-compose file to help you get
started.


My Findings
-------------
Basically it's broken. I was able to set up a solid framework for using it in Docker, and
while a lot of the higher level apps like the web ui (luci) "work", it's still
very broken. What I didn't fully realize upon starting in on this is that
OpenWrt leans heavily on the features embedded in the kernel it's shipped with.
These are features that desktop distros don't bother embedding into their
kernels because there are userspace apps that do a much better job. So unless
somebody comes along and rewrites all of the apps in OpenWrt to also work
with a generic desktop/server kernel, it won't ever work in Docker.
