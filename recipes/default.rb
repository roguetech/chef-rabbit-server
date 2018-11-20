# Cookbook Name:: rxp-empty-cookbook
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory '/var/lib/foo' do
  mode '0644'
  group 'root'
  user 'root'
end
