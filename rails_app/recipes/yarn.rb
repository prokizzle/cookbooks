#
# Cookbook:: rails_app
# Recipe:: yarn
#
# Copyright:: 2017, The Authors, All Rights Reserved.
execute 'install node source' do
    command 'curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - '
end

execute 'install node' do
    command 'sudo apt-get install -y nodejs'
end

execute 'add key' do 
    command 'curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - '
end
execute 'add source' do
    command 'echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list'
end
execute 'update apt' do
    command 'sudo apt-get update'
end

apt_package 'yarn'
