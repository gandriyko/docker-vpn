# docker-vpn

Installation
----------------------------------

 * clone repository :

       git clone https://github.com/gandriyko/docker-vpn.git

 * add some OpenVPN configurations to `data` folder
 * method 1:

   build

       docker build . -t arch-vpn
   run

       docker run -ti -v $(pwd)/data:/data --privileged --device /dev/net/tun --cpus=2 arch-vpn

   or without cpu limitation

       docker run -ti -v $(pwd)/data:/data --privileged --device /dev/net/tun arch-vpn

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
  * `vpn-start` - for starting new random VPN connection
  * `vpn-check` - checking if connection is active
