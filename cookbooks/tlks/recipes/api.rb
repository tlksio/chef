git "/opt/tlks.io/api" do
    repository "https://github.com/tlksio/api.git"
    revision "develop"
    action :sync
end

cookbook_file '/etc/supervisor/conf.d/tlks-api.conf' do
    name "tlks-api.conf"
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

bash "api" do
    cwd "/opt/tlks.io/api"
    code <<-EOH
    chown www-data:www-data -R ..
    chmod g+w -R ..
    npm install
    sudo service supervisor restart
    EOH
end
