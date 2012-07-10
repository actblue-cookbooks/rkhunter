package "rkhunter" do
  action :install
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
