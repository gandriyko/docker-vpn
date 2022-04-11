FROM alpine:latest

RUN apk add mc htop git wireguard-tools openvpn bash curl wget links tmux
#RUN pacman -Sy openresolv mc openvpn tmux vim nano git python go htop bash-completion wireguard-tools --noconfirm

# add go 1.8
COPY --from=golang:1.18-alpine /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"

WORKDIR /data

# RUN chown -R  root: /etc/wireguard/ && chmod -R 600 /etc/wireguard/*.*

COPY update-resolv-conf.sh /etc/openvpn/update-resolv-conf.sh
COPY update-resolv-conf.sh /etc/openvpn/update-resolv-conf

COPY vpn-check /usr/local/bin/
COPY vpn-start /usr/local/bin/
COPY wg-start /usr/local/bin/
COPY letsgo /usr/local/bin/

# CMD /usr/bin/tmux new -d -s mysession "bash --init-file <(echo vpn-start)"; tmux a
CMD /usr/bin/tmux