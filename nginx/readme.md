[# Nginx Virtual Host Configuration File
This repository contains a set of sample configurations for setting up virtual hosts with Nginx.


### Usage

Copy the configuration file to your Nginx configuration directory. <br/>
For example, if your Nginx configuration directory is /etc/nginx, you would run:

```cp example.com.conf /etc/nginx/sites-available/```

Create softlink to the config file

```ln -s /etc/nginx/sites-available/example.com.conf /etc/nginx/sites-enabled/```

Check nginx status

```nginx -t```

Restart Ngnix server

```sudo systemctl restart nginx```


### Contributing
If you have a configuration file you'd like to share, feel free to open a pull request!

### License
These configuration files are released under the MIT License. See the LICENSE file for more information.
](https://github.com/CodeBreakerRU/boilerplates/wiki/Nginx#nginx-virtual-host-configuration-file)