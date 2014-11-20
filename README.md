icanhazdevops Cookbook
======================
This cookbook creates a new web server for company "I Can Haz Devops", a tech based startup that teaches cats how to support customer code. 

Requirements
------------

OS:   icanhazdevops runs on ReadHat/CentOS starting with version 5.x and needs the SCL repository.

CHEF: icanhazdevops deploys Apache with the comunity apache2 cookbook,

Usage
-----

Just include `icanhazdevops` in your node's `run_list`:

{
  "name":"my_node",
  "run_list": [
    "recipe[icanhazdevops]"
  ]
}

Or use it to create a server with knife:

knife rackspace server create -f performance1-1  -I 7e746552-2212-41d7-b216-a1024b83b0c4  -N icanhazdevops1 -S icanhazdevops11 -r icanhazdevops
