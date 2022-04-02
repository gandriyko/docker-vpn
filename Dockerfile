FROM archlinux:latest

RUN pacman -Sy openresolv mc openvpn tmux vim nano git python go --noconfirm

WORKDIR /data
COPY update-resolv-conf.sh /etc/openvpn/update-resolv-conf.sh
COPY update-resolv-conf.sh /etc/openvpn/update-resolv-conf

COPY vpn-check /usr/local/bin/
COPY vpn-start /usr/local/bin/

# CMD /bin/bash
CMD /usr/bin/tmux new -d -s mysession "bash --init-file <(echo vpn-start)"; tmux a
