# rkhunter takes some of it's configs from dpkg, so we need to handle
# it's response file.
#template "/etc/dpkg/rkhunter.response" do
#  source "debian.response.erb"
#  mode 0644
#  owner "root"
#  group "root"
#end

package "rkhunter" do
  action :install
#  response_file "/etc/dpkg/rkhunter.response"
end

template "/etc/default/rkhunter" do
  source "debian-default.erb"
  mode 0644
  owner "root"
  group "root"
end

template "/etc/rkhunter.conf" do
  source "rkhunter.conf.erb"
  mode 0644
  owner "root"
  group "root"
end
