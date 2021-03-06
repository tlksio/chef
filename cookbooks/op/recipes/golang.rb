bash 'nodejs' do
    user "root"
    cwd "/tmp"
    code <<-EOH
    rm -rf go1.4.2.linux-amd64.tar.gz
    wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
    mkdir -p /usr/local/go
    cd /usr/local/go && tar --strip-components 1 -xzf /tmp/go1.4.2.linux-amd64.tar.gz
    EOH
end
