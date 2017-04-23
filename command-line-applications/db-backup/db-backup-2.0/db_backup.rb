#!/usr/bin/env ruby
require "optparse"

# Sample servers to test validation against
servers = {
	"dev": "127.0.0.1",
	"qa": "qa001.example.com",
	"prod": "www.example.com"
}

main_options = {}
option_parser = OptionParser.new do |options|

	# Create a switch
	options.on("-i", "--iteration") do
		main_options[:iteration] = true
	end

	# Create a flag
	options.on("-u USER") do |user|
		unless user =~ /^.+\..+$/
			raise ArgumentError, "USER must be in '{first}.{last}' format"
		end
		main_options[:user] = user
	end

	options.on("-p PASSWORD") do |password|
		main_options[:password] = password
	end
end

option_parser.parse!
puts main_options.inspect