#!C:\Ruby26-x64\bin\ruby.exe
require './nodes-info.rb'

master_ip = ENV['master_ip']
master_path_key = ENV['master_path_key']

SSH_STR = "ssh -i " + "\"" + master_path_key + "\"" + " vagrant@" + master_ip

system(SSH_STR)





# puts master_ip + "\n"
# puts master_path_key + "\n"
