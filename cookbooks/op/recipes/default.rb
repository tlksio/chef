# --- Install packages we need ---
package 'ntp'
package 'git'
package 'build-essential'
package 'supervisor'

# --- Set host name ---
hostname = 'tlks.io'

file '/etc/hostname' do
  content "#{hostname}\n"
end

file '/etc/hosts' do
  content "127.0.0.1 localhost #{hostname}\n"
end

directory "/opt/tlks.io" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

