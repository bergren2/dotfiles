#!/usr/bin/env ruby

require 'fileutils'

puts "Setting up vim..."

def link_with_check(old, new)
  FileUtils.ln_s(old, new)
rescue
  print "#{new} exists. Replace? (y/N) "
  if $stdin.gets.chomp.downcase == "y"
    puts "Replacing #{new}"
    FileUtils.ln_sf(old, new)
  else
    puts "Skipping #{new}"
  end
end

here = File.dirname(__FILE__)

['vimrc', 'gvimrc', 'ackrc', 'vrapperrc'].each do |name|
  path = File.expand_path(name, here)
  link_with_check(path, File.expand_path("~/.#{name}"))
end

puts "done."
