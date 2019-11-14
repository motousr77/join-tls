#!C:\Ruby26-x64\bin\ruby.exe
LIST_IP_MASTERS = "masters"
LIST_IP_WORKERS = "workers"
PRE_KEY_PATH = "../.vagrant/machines/"
PST_KEY_PATH = "/virtualbox/private_key"
NODE_NAME = ARGV[0] + "-" + ARGV[1]
PATH_TO_KEY = PRE_KEY_PATH + NODE_NAME + PST_KEY_PATH

index = ARGV[1].to_i - 1

masters = []
text = File.open(LIST_IP_MASTERS).read
text.gsub!(/\r\n?/, "\n")
text.each_line do |line|
	masters.push(line)
end

workers = []
text = File.open(LIST_IP_WORKERS).read
text.gsub!(/\r\n?/, "\n")
text.each_line do |line|
	workers.push(line)
end

puts 'Masters IP:'
masters.each do |element|
	puts "#{element}"
end

puts 'Workers IP:'
workers.each do |element|
	puts "#{element}"
end

node_selector = ARGV[0]

case node_selector
	when "master"
		SSH_STR = "ssh -i " + "\"" + PATH_TO_KEY + "\"" + " vagrant@" + masters[index]
	when "worker"
		SSH_STR = "ssh -i " + "\"" + PATH_TO_KEY + "\"" + " vagrant@" + workers[index]
	end

system(SSH_STR)



# puts SSH_STR + "\n"

# case node_selector
# 	when "master"
# 		SSH_STR = "ssh -i " + "\"" + PATH_TO_KEY + "\"" + " vagrant@" + masters[ARGV[1].to_i]
# 	when "worker"
# 		SSH_STR = "ssh -i " + "\"" + PATH_TO_KEY + "\"" + " vagrant@" + workers[ARGV[1].to_i]
# 	end