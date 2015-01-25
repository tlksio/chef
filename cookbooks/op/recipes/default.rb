# --- Install packages we need ---
package 'ntp'
package 'git'
package 'build-essential'
package 'lighttpd'
package 'php5'
package 'php5-cli'
package 'php5-dev'
package 'php5-cgi'

# --- Set host name ---
hostname = 'vps129914.ovh.net'

file '/etc/hostname' do
  content "#{hostname}\n"
end

file '/etc/hosts' do
  content "127.0.0.1 localhost #{hostname}\n"
end

directory "/opt/techtalks.io" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
