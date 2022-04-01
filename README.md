# docker-vpn

Installation
----------------------------------

 * clone repository :

       git clone https://github.com/gandriyko/docker-vpn.git

 * add some OpenVPN configurations
 * method 1:
    
       docker build . -t vpn
       ./run

 * method 2:
     
       docker-compose build
       docker-compose up -d
       docker attach arch-vpn
 * There is running **tmux** inside docker with active panel. Enter vpn credentials if needed.
 * Press `control + b %` to open new panel and start working

Scripts 
----------------------------------
  * `vpn-start` - for start new random connection from `/etc/openvpn/client/\*.conf` or `/etc/openvpn/client/\*.ovpn`
  * `vpn-check` - check if connection is active