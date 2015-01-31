git "/opt/techtalks.io/front" do
    repository "https://github.com/techtalksio/front.git"
    revision "develop"
    action :sync
end

cookbook_file '/etc/supervisor/conf.d/techtalks-front.conf' do
    name "techtalks-front.conf"
    mode '0755'
    owner 'root'
    group 'root'
end

directory "/var/log/techtalks" do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

bash "front" do
    cwd "/opt/techtalks.io/front"
    code <<-EOH
    npm install
    EOH
end
