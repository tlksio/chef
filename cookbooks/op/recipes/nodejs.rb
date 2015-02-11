bash 'nodejs' do
    user "root"
    cwd "/tmp"
    code <<-EOH
    rm -rf node-v0.12.0-linux-x64.tar.gz
    wget http://nodejs.org/dist/v0.12.0/node-v0.12.0-linux-x64.tar.gz
    cd /usr/local && tar --strip-components 1 -xzf /tmp/node-v0.12.0-linux-x64.tar.gz
    EOH
end
