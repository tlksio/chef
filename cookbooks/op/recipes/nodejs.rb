bash 'nodejs' do
    user "root"
    cwd "/tmp"
    code <<-EOH
    wget http://nodejs.org/dist/v0.10.35/node-v0.10.35-linux-x64.tar.gz
    cd /usr/local && tar --strip-components 1 -xzf /tmp/node-v0.10.35-linux-x64.tar.gz
    EOH
end
