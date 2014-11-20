ICanHazDevops Cookbook
======================
This cookbook creates a new web server for company "I Can Haz Devops", a tech based startup that teaches cats how to support customer code. 

Requirements
------------

OS:   ICanHazDevops runs on ReadHat/CentOS starting with version 5.x and needs the SCL repository.

CHEF: ICanHazDevops deploys Apache with the comunity apache2 cookbook,

Usage
-----

Just include `ICanHazDevops` in your node's `run_list`:

{
  "name":"my_node",
  "run_list": [
    "recipe[ICanHazDevops]"
  ]
}

Or use it to create a server with knife:

knife rackspace server create -f performance1-1  -I 7e746552-2212-41d7-b216-a1024b83b0c4  -N ICanHazDevops1 -S CanHazDevops1 -r ICanHazDevops
