FROM alpine

RUN apk add openvpn

LABEL org.opencontainers.image.source https://github.com/Defelo/docker-ovpn

CMD ["sh", "-c", "iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE && openvpn /vpn.ovpn"]
