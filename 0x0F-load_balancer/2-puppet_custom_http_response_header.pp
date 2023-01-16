#create custom puppet HTTP header response with puppet
exec { 'command': 
 command => 'apt-get -y update;
 apt-get -y install nginx;
 sudo sed -i "/listen 80 default-server;/a add-header X-Served-by $HOSTNAME;" /etc/nginx/sites-available/default;
 service nginx restart',
 provider => shell,
}
