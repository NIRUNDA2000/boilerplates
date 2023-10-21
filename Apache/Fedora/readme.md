## Install Apache on Fedora

#### Update and upgrade System Packages

```
sudo dnf update
sudo dnf upgrade --refresh
```

#### Install Apache

```
sudo dnf install httpd
```

#### Start and enable apache server

```
sudo systemctl start httpd 
sudo systemctl enable httpd
```

#### Check Status of the Apache Server

```
systemctl status httpd
```

#### Create Vhosts

```
mkdir /etc/httpd/sites-available /etc/httpd/sites-enabled
```

#### Define Active Vhosts paths in Apache Config

```
nano /etc/httpd/conf/httpd.conf
```

```
IncludeOptional sites-enabled/*.conf
```


#### Create VHost

```
nano /etc/httpd/sites-available/example.com.conf
```

```
<VirtualHost *:80> 
	ServerAdmin webmaster@localhost 
	ServerName example.com
	ServerAlias www.example.com
	DocumentRoot /var/www/example.com/ 
</VirtualHost>

<Directory /var/www/example.com/> 
	Options Indexes FollowSymLinks 
	AllowOverride None 
	Require all granted 
</Directory>
```

#### Create Website directory

```
mkdir /var/www/example.com
```

#### Create HTML File

```
sudo nano /var/www/example.com/index.html
```
#### Configure Permissions

```
sudo chown -R apache:apache /var/www/example.com
sudo chmod -R 755 /var/www/example.com
```

#### Configure Proper Permissions to secure web server

```
sudo find /var/www/example.com/ -type d -exec chmod 755 "{}" \; 
sudo find /var/www/example.com/ -type f -exec chmod 644 "{}" \;
```
#### Active VHost File

```
sudo ln -s /etc/httpd/sites-available/example.com.conf /etc/httpd/sites-enabled/
```
#### Restart Apache and check status

```
sudo systemctl restart httpd
sudo systemctl status httpd
```