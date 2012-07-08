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
vimpath = File.expand_path('vimrc', here)
link_with_check(vimpath, File.expand_path('~/.vimrc'))

gvimpath = File.expand_path('gvimrc', here)
link_with_check(gvimpath, File.expand_path('~/.gvimrc'))

`git submodule update --init`

puts "Compiling Command-T"
Dir.chdir("#{here}/bundle/command-t/ruby/command-t") do
  `ruby extconf.rb`
  `make`
end

puts "done."
