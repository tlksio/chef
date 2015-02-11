git "/opt/tlks.io/front" do
    repository "https://github.com/tlksio/front.git"
    revision "develop"
    action :sync
end

cookbook_file '/etc/supervisor/conf.d/tlks-front.conf' do
    name "tlks-front.conf"
    mode '0755'
    owner 'root'
    group 'root'
end

directory "/var/log/tlks.io" do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

bash "front" do
    cwd "/opt/tlks.io/front"
    code <<-EOH
    npm install
    EOH
end
