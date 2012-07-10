# various things rkhunter uses
%w{bsd-mailx unhide}.each do |pkg|
  package pkg do
    action :install
  end
end
package "rkhunter" do
  action :install
end

template "/etc/default/rkhunter" do
  source "debian-default.erb"
  mode 0644
  owner "root"
  group "root"
end

template "/etc/rkhunter.conf.local" do
  source "rkhunter.conf.erb"
  mode 0644
  owner "root"
  group "root"
end
