# exit-safer
drop list of exit node address with iptables

# Prep
`pacman -S proxychains4 iptables`

# Usage

`./exit-safer.sh` or `proxychains4 ./exit-safer.sh` 

# Results
`sudo iptables -L`\
Chain INPUT (policy ACCEPT)
target     prot opt source               destination         
DROP       all  --  102.130.113.9        anywhere            
DROP       all  --  sortie-tor.a-n-o-n-y-m-e.net  anywhere            
DROP       all  --  102.130.127.117      anywhere            
DROP       all  --  103.109.101.105      anywhere            
DROP       all  --  103.126.161.54       anywhere            
DROP       all  --  zlisianthus.com      anywhere            
DROP       all  --  sortie-tor.a-n-o-n-y-m-e.net  anywhere            
DROP       all  --  tor.fmt.53labs.com   anywhere            
DROP       all  --  zexit.tor.ac.nz      anywhere            
DROP       all  --  this-is-a-TOR-EXIT-NODE.union  anywhere            
DROP       all  --  103.251.167.20       anywhere            
DROP       all  --  ip103-28-52-93.cloudhost.web.id  anywhere            
DROP       all  --  104.167.242.116      anywhere            
DROP       all  --  104.167.242.117      anywhere            
DROP       all  --  104.167.242.118      anywhere            
DROP       all  --  ip-104-192-1-138.host.datawagon.net  anywhere            
DROP       all  --  this-is-a-tor-exit   anywhere            
DROP       all  --  ip-104-219-232-126.host.datawagon.net  anywhere            
DROP       all  --  ip-104-219-236-100.host.datawagon.net  anywhere            
DROP       all  --  tor-exit-hermes.greektor.com  anywhere            
DROP       all  --  quetzalcoatl-relays.org  anywhere     
...
..
.

# Paranoid mode
disable all traffic that do not go through the Tor service

`sudo ufw default deny outgoing`\
`sudo ufw allow out 9050/tcp`\
`sudo ufw allow out 9150/tcp`

