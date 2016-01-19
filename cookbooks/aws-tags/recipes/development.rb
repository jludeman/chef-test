#
# Cookbook Name:: aws_tags
# Recipe:: development
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

marker "recipe_start_rightscale" do
	template "rightscale_audit_entry.erb"
end

::Chef::Recipe.send(:include, AWSTags::Helper)

#functional_role_tag(node[:tagging][:functional_role][:development])
functional_role_tag("Development")
technical_role_tag(node[:tagging][:technical_role][:development])
