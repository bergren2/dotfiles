#!/usr/bin/env ruby

require 'fileutils'

puts 'Setting up vim...'

def link_with_check(old, new)
  FileUtils.symlink(old, new)
rescue Errno::EEXIST
  print "#{new} exists. Replace? (y/N) "
  if $stdin.gets.chomp.casecmp? 'y'
    puts "Replacing #{new}"
    FileUtils.symlink(old, new, force: true)
  else
    puts "Skipping #{new}"
  end
end

# start

HERE = File.dirname(__FILE__)
DOTVIM_DIR = '~/.vim'.freeze

%w[colors ftdetect ftplugin UltiSnips].each do |dir|
  puts "Copying #{dir} into #{DOTVIM_DIR}..."
  path = File.expand_path(dir, HERE)
  FileUtils.copy_entry(path, File.expand_path(dir, DOTVIM_DIR))
end

%w[vimrc gvimrc ackrc vrapperrc].each do |name|
  path = File.expand_path(name, HERE)
  link_with_check(path, File.expand_path("~/.#{name}"))
end

puts 'done.'
