# --- Install packages we need ----
package 'vim-nox'
package 'curl'

bash 'perms' do
    user "root"
    cwd "/tmp"
    code <<-EOH
    EOH
end
