# How to set up redirect for apache server

*proof of concept on archlinux*

* configure your `httpd.conf`: ` sudo gedit /etc/httpd/conf/httpd.conf`
    - make sure these options are enabled:
        
        `AllowOverride All`
         
        `Order allow,deny`
        
     	`Allow from all`
     	
* copy `build/site` contents into `srv/http`
* change permissions, e.g. `sudo chmod o+x -R`
* `systemctl start httpd.service`
* in case redirect does not work immediately:
    * rename `.htaccess` to `live.htaccess` (restart server) then rename to `.htaccess` (restart)