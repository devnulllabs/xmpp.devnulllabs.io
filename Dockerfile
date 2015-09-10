# DOCKER-VERSION 1.8.1

FROM base/archlinux:latest

RUN pacman-key --init; pacman-key --populate archlinux; pacman-key --refresh-keys

RUN pacman -Syu --noprogressbar --noconfirm prosody lua51-sec lua51-zlib

ADD ./conf/prosody.cfg.lua /etc/prosody/prosody.cfg.lua

ADD ./modules/mod_carbons.lua /usr/lib/prosody/modules/mod_carbons.lua

VOLUME ["/var/log/prosody", "/var/lib/prosody"]

EXPOSE 5222 5269

USER prosody

CMD ["prosodyctl", "start"]
