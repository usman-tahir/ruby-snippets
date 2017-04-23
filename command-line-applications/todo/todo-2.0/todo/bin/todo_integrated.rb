#!/usr/bin/env ruby

flag :f
command :new do |c|
	c.flag :priority
	c.switch :f

	c.action do |global_options, options, args|
		puts "Global:"
		puts "-f - #{global_options[:f]}"
		puts "Command:"
		puts "-f - #{options[:f] ? 'true' : 'false'}"
		puts "--priority - #{options[:priority]}"
		puts "args - #{args.join(',')}"
	end
end

command :list do |c|
	c.flag :s

	c.action do |global_options, options, args|
		puts "Global:"
		puts "-f - #{global_options[:f]}"
		puts "Command:"
		puts "-s - #{options[:s]}"
	end
end

command :done do |c|
	c.action do |global_options, options, args|
		puts "Global:"
		puts "-f - #{global_options[:f]}"
	end
end