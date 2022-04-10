# docker-vpn

Installation
----------------------------------

 * clone repository :

       git clone https://github.com/gandriyko/docker-vpn.git

 * add some OpenVPN configurations to `data/ovpn` or WireGuard configurations to `data/wg` folder  
 * method 1:

   build

       docker build . -t vpn
   run

       docker run -ti -v $(pwd)/data:/data --privileged --cpus=2 vpn

   or without cpu limitation

       docker run -ti -v $(pwd)/data:/data --privileged vpn

     or simple 

         ./run
 * method 2:

       docker-compose build
       docker-compose up -d
       docker attach vpn
 * There is running **tmux** inside docker with active panel. Enter vpn credentials if needed.
 * Press `control + b %` to open new panel and start working

Scripts 
----------------------------------
  * `wg-start` - start new random WireGuard connection
  * `vpn-start` - start new random VPN connection
  * `vpn-check` - check if connection is active
  * `letsgo vpn "some command"` - run some command and periodically (every 10 minutes) change OpenVPN connection
  * `letsgo wg "some command"` - run some command and periodically (every 10 minutes) change WireGuard connection 