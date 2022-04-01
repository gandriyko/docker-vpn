# docker-vpn

Installation
----------------------------------

 * clone repository :

       git clone https://github.com/gandriyko/docker-vpn.git

 * add some OpenVPN configurations
 * method 1:

   build   

       docker build . -t arch-vpn
   run       

       docker run -ti -v $(pwd)/conf:/etc/openvpn/client --cap-add=NET_ADMIN --device /dev/net/tun --cpus=4 arch-vpn

   or simple 
   
       ./run
 * method 2:
     
       docker-compose build
       docker-compose up -d
       docker attach arch-vpn
 * There is running **tmux** inside docker with active panel. Enter vpn credentials if needed.
 * Press `control + b %` to open new panel and start working

Scripts 
----------------------------------
  * `vpn-start` - for starting new random connection from `/etc/openvpn/client/*.conf` or `/etc/openvpn/client/*.ovpn`
  * `vpn-check` - checking if connection is active
