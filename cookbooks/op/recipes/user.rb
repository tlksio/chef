# --- Install packages we need ----
package 'vim-nox'
package 'curl'

bash 'perms' do
    user "root"
    cwd "/tmp"
    code <<-EOH
    adduser vagrant www-data
    EOH
end
