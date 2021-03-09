	

  provisioner "remote-exec" {
  
    connection {
    type         = "ssh"
    user         = "azureuser"
	#private_key = file("~/.ssh/nginx-server-key.pem")
	private_key  = tls_private_key.example_ssh.private_key_pem
    host         = azurerm_linux_virtual_machine.myterraformvm.public_ip_address
   }
  
      inline = [
      "curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash",
     #"consul join ${aws_instance.web.private_ip}",
	  "sudo apt-get install unzip -y",
	  "wget https://releases.hashicorp.com/terraform/0.12.30/terraform_0.12.30_linux_amd64.zip",
	  "unzip terraform_0.12.30_linux_amd64.zip",


	  "sudo apt install nginx -y",
	  "sudo apt-get udpate -y",
	  "sudo apt install certbot python3-certbot-nginx -y",
	  "sudo certbot --nginx -d workshop0001.axwaydemo.co.uk",
	  "#copy contents of installers folder (installer and lic)"
	  "./APIGateway_7.7.20210130_Install_linux-x86-64_BN04.run --mode unattended --setup_type advanced --enable-components apimgmt,apigateway,nodemanager,cassandra --disable-components qstart,policystudio,configurationstudio,analytics,apitester,packagedeploytools --licenseFilePath 'API 7.7 Temp.lic' --apimgmtLicenseFilePath 'API 7.7 Temp.lic'

#complete install

./APIGateway_7.6.2_Install_linux-x86-32_BN<n>.run --mode unattended 
--setup_type complete 
--licenseFilePath api.lic
--analyticsLicenseFilePath api.lic
--apimgmtLicenseFilePath api.lic
--prefix /opt/Axway-7.6.2
--cassandraInstalldir /opt/db/cassandra
--cassandraJDK /opt/jre
--startCassandra 1
 
 ]
  }	
	
	
	AS ROOT
	
	
    1  less /etc/letsencrypt/live/workshop0001.axwaydemo.co.uk/fullchain.pem
    2  less /etc/letsencrypt/live/workshop0001.axwaydemo.co.uk/cert.pem
    3  less /etc/letsencrypt/live/workshop0001.axwaydemo.co.uk/chain.pem
    4  less /etc/letsencrypt/live/workshop0001.axwaydemo.co.uk/fullchain.pem
    5  vi /etc/letsencrypt/live/workshop0001.axwaydemo.co.uk/fullchain.pem
    6  less /etc/letsencrypt/live/workshop0001.axwaydemo.co.uk/fullchain.pem
    7  vi /etc/letsencrypt/live/workshop0001.axwaydemo.co.uk/fullchain.pem
    8  tail -f /var/log/nginx/*
    9  exit
   10  cp /etc/letsencrypt/live/workshop0001.axwaydemo.co.uk/fullchain.pem /home/azureuser/
   11  cp /etc/letsencrypt/live/workshop0001.axwaydemo.co.uk/privkey.pem /home/azureuser/
   12  chown azureuser:azureuser /home/azureuser/fullchain.pem
   13  chown azureuser:azureuser /home/azureuser/privkey.pem
   14  exit
   15  ls /opt/cassandra/bin/stop-server
   16  less /opt/cassandra/bin/stop-server
   17  systemctl |grep cass
   18  cd /opt/cassandra/bin/
   19  ls -la
   20  more stop-server
   21  ls
   22  pwd
   23  sudo find / |grep pidfile
   24  more stop-server
   25  user=`whoami`
   26  pgrep -u $user -f cassandra
   27  ps -ef |grep 5471
   28  kill -9 5471
   29  ps -ef |grep 5471
   30  ls
   31  ./cassandra &
   32  cd ..
   33  ls
   
   AS azureuser
   
       1  exit
    2  pwd
    3  ls
    4  sudo apt install nginx -y
    5  systemctl status nginx
    6  sudo apt install certbot python3-certbot-apache -y
    7  sudo apt install certbot python3-certbot-nginx
    8  apt-get update -y
    9  sudo apt-get update -y
   10  sudo apt install certbot python3-certbot-nginx -y
   11  sudo ufw status
   12  sudo certbot --nginx -d *.workshop0001.axwaydemo.co.uk
   13  sudo certbot --nginx -d workshop0001.axwaydemo.co.uk
   14  more /etc/ssl/certs/
   15  more /etc/nginx/sites-enabled/default
   16  less /etc/nginx/sites-enabled/default
   17  ls /etc/letsencrypt/live/
   18  sudo ls /etc/letsencrypt/live/
   19  sudo ls /etc/letsencrypt/live/workshop0001.axway.co.uk
   20  sudo su -
   21  exit
   22  sudo su -
   23  ls -la
   24  exit
   25  history
   26  wget https://support.axway.com/en/downloads/download-details/id/1447532
   27  wget https://support.axway.com/en/downloads/download/id/1447532
   28  more 1447532.1
   29  curl https://support.axway.com/en/downloads/download/id/1447532
   30  curl -vv https://support.axway.com/en/downloads/download/id/1447532
   31  exit
   32  ls -la
   33  chmod +x APIGateway_7.7.20210130_Install_linux-x86-64_BN04.run
   34  exit
   35  ls -la
   36  ./APIGateway_7.7.20210130_Install_linux-x86-64_BN04.run --mode unattended --setup_type advanced --enable-components apimgmt,apigateway,nodemanager,cassandra --disable-components qstart,policystudio,configurationstudio,analytics,apitester,packagedeploytools --licenseFilePath 'API 7.7 Temp.lic' --apimgmtLicenseFilePath 'API 7.7 Temp.lic'
   37  ./APIGateway_7.7.20210130_Install_linux-x86-64_BN04.run --mode unattended --setup_type advanced --enable-components apimgmt,apigateway,nodemanager,cassandra --disable-components qstart,policystudio,configurationstudio,analytics,packagedeploytools --licenseFilePath 'API 7.7 Temp.lic' --apimgmtLicenseFilePath 'API 7.7 Temp.lic'
   38  ./APIGateway_7.7.20210130_Install_linux-x86-64_BN04.run
   39  sudo ./APIGateway_7.7.20210130_Install_linux-x86-64_BN04.run --mode unattended --setup_type advanced --enable-components apimgmt,apigateway,nodemanager,cassandra --disable-components qstart,policystudio,configurationstudio,analytics,packagedeploytools --licenseFilePath 'API 7.7 Temp.lic' --apimgmtLicenseFilePath 'API 7.7 Temp.lic'
   40  sudo ./APIGateway_7.7.20210130_Install_linux-x86-64_BN04.run
   41  ls
   42  mv 'API 7.7 Temp.lic' api.lic
   43  ls
   44  sudo ./APIGateway_7.7.20210130_Install_linux-x86-64_BN04.run
   45  hostname
   46  more /etc/hosts
   47  sudo ./APIGateway_7.7.20210130_Install_linux-x86-64_BN04.run
   48  curl -vv resource "azurerm_network_security_rule" "https"  {
   49  curl -vv https://10.0.2.4:8090
   50  curl -vv https://10.0.2.4:8090 --insecure
   51  exit
   52  sudo find / |grep -F .crt
   53  sudo find /opt |grep -F .pem
   54  more /opt/Axway-7.7.0/apigateway/groups/certs/domaincert.pem
   55  ls /opt/Axway-7.7.0/apigateway/groups/certs/
   56  cd /opt/Axway-7.7.0/apigateway/groups/certs/
   57  ls -la
   58  mv domaincert.pem domaincert.pem.original
   59  sudo mv domaincert.pem domaincert.pem.original
   60  sudo mv /home/azureuser/fullchain.pem domaincert.pem
   61  more domaincert.pem
   62  ls -la
   63  pwd
   64  cd ..
   65  ls -la
   66  cd certs/
   67  ls
   68  more domaincert.pem
   69  more private/
   70  sudo more private/domain.p12
   71  sudo more private/domainkey.pem
   72  cd private/
   73  mv domainkey.pem domainkey.pem.original
   74  sudo mv domainkey.pem domainkey.pem.original
   75  sudo cp /home/azureuser/privkey.pem domainkey.pem
   76  cd ..
   77  systemctl |grep api
   78  sudo netstat -anp |grep 8090
   79  q
   80  sudo netstat -anp |grep 8090
   81  q
   82  sudo ps -ef |grep ode
   83  sudo find / |grep scripts
   84  find / |grep cassandra
   85  systemctl restart cassandra
   86  sudo systemctl restart cassandra
   87  sudo ps -ef |grep cassandra
   
   
   
   #ADD THIS STUFF TO /etc/nginx/sites-enable/default
   
 

server {
    server_name apimanager.axwaydemo.co.uk;
    listen 443 ssl;
    ssl_certificate /etc/letsencrypt/live/axwaydemo.co.uk/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/axwaydemo.co.uk/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbo
      #proxy_set_header        Host $host;     # proxy_set_header        Host $host;

    location / {
        proxy_set_header        Host $host;
        proxy_set_header        X-Real-IP $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header        X-Forwarded-Proto $scheme;
        proxy_pass https://10.0.2.4:8075;
    }

}

server {
    server_name apigateway.axwaydemo.co.uk;
    listen 443 ssl;
    ssl_certificate /etc/letsencrypt/live/axwaydemo.co.uk/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/axwaydemo.co.uk/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot


    location / {
        proxy_set_header        Host $host;
        proxy_set_header        X-Real-IP $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header        X-Forwarded-Proto $scheme;
        proxy_pass https://10.0.2.4:8090;
    }
}

server {
    server_name api.axwaydemo.co.uk;
    listen 443 ssl;
    ssl_certificate /etc/letsencrypt/live/axwaydemo.co.uk/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/axwaydemo.co.uk/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot


    location / {
        proxy_set_header        Host $host;
        proxy_set_header        X-Real-IP $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header        X-Forwarded-Proto $scheme;
        proxy_pass https://10.0.2.4:8065;
    }
}


server {
    server_name apibuilder.axwaydemo.co.uk;
    listen 443 ssl;
    ssl_certificate /etc/letsencrypt/live/axwaydemo.co.uk/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/axwaydemo.co.uk/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot


    location / {
        proxy_set_header        Host $host;
        proxy_set_header        X-Real-IP $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header        X-Forwarded-Proto $scheme;
        proxy_pass http://localhost:8083;
    }

   # Upgrade nodejs to version 12
   curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
   sudo apt-get remove nodejs -y
   sudo apt-get install nodejs -y


   # INSTALL API BUILDER
   
   sudo apt-get install npm -y
   #sudo npm install @axway/api-builder
   #subo npm install @axway/api-builder-runtime
   
   sudo npm install -g @axway/amplify-cli
   sudo amplify pm install @axway/amplify-api-builder-cli

   sudo npm install @axway-api-builder-ext/api-builder-plugin-dc-postgres

   amplify builder init mybuilderproject
   cd mybuilderproject/
   npm start
   
   # INSTALL MY SQL VERSION 5.7
   
   wget https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-server_5.7.33-1ubuntu18.04_i386.deb
   wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
   sudo dpkg -i mysql-apt-config_0.8.12-1_all.debsudo apt-get update
   sudo apt-get update
   sudo apt-cache policy mysql-server
   sudo apt install -f mysql-client=5.7.32-1ubuntu18.04 mysql-community-server=5.7.32-1ubuntu18.04 mysql-server=5.7.32-1ubuntu18.04
   sudo apt install -f mysql-client=5.7.33-1ubuntu18.04 mysql-community-server=5.7.33-1ubuntu18.04 mysql-server=5.7.33-1ubuntu18.04
   mysql
   mysql -u root -p
   cd mybuilderproject/
   dir
   sudo npm install @axway/api-builder-plugin-dc-mysql
   
   
   # Change the mySQL bind address to allow external access
   
   sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf # change bind-address variable
   
   # Allow access to the database for user: mortgageuser from any IP address:
   
   # Note, the usual password on mysql is 123456 for the root user
   
   grant all on mortgage.* to 'mortgageuser'@'%.%.%.%' IDENTIFIED BY '123456';
   grant all privileges on *.* to 'apiportaluser'@'%.%.%.%' IDENTIFIED BY 'Space*117'; 
 
   # INSTALL JENKINS AND MOVE AWAY FROM PORT 8080
   
   # First, install the Java runtime environment for JENKINS
   
   sudo apt install openjdk-11-jre-headless
   
   # Now install Jenkins Automation server
   
   wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
   sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
   /etc/apt/sources.list.d/jenkins.list'
   sudo apt-get update
   sudo apt-get install jenkins
   
   #Change the default listening port from 8080 to 32080. Change the variable HTTP_PORT in the file below:
   
   sudo vi /etc/default/jenkins
	
   #Install DOCKER Community Edition
   
   sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
   sudo apt-key fingerprint 0EBFCD88
   sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
   sudo apt update
   sudo apt install docker-ce
   echo $USER
   sudo usermod -aG docker $USER
   
   # Load the API Portal Docker Image
   sudo docker load -i APIPortal_7.7_DockerImage_linux-x86-64_BN450.tar
   
   # Start the API Portal Docker Container
   
   sudo docker container run --name apiportal \
   -p 32081:80 \
  -e MYSQL_HOST=apimanager.axwaydemo.co.uk \
  -e MYSQL_PORT=3306 \
  -e MYSQL_DATABASE=apiportal \
  -e MYSQL_USER=apiportaluser \
  -e MYSQL_PASSWORD=Space*117 \
  axway/apiportal:7.7.20210130
   
   # Alternatively, start API portal with ENV file
   
   sudo docker container run --name apiportal --env-file apiportalconfig.env -p 32081:80 axway/apiportal:7.7.20210130
   
   

	



   
   
   