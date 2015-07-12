git "/opt/tlks.io/server" do
    repository "https://github.com/tlksio/server.git"
    revision "develop"
    action :sync
end

cookbook_file '/etc/supervisor/conf.d/tlks-server.conf' do
    name "tlks-server.conf"
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

bash "server" do
    cwd "/opt/tlks.io/server"
    code <<-EOH
    chown www-data:www-data -R ..
    chmod g+w -R ..
    npm install
    sudo service supervisor restart
    EOH
end
