# Encoding: utf-8
#
# Cookbook Name:: ICanHazDevops
# Recipe:: site
#
# Copyright 2014, Helmut
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# 'Software'), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

web_app 'ICanHazDevops' do
  server_name node['hostname']
  server_aliases [node['fqdn'], 'icanhazdevops.com', 'www.icanhazdevops.com']
  docroot '/var/www/html/'
  template 'icanhazdevops.conf.erb'
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode 00640
  owner node['apache']['user']
  group node['apache']['group']
  variables(
    :server_name => node['hostname']
  )
end
