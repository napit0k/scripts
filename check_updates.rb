#!/usr/bin/ruby
require 'pathname'
puts "%|napit0k|Arch::Utilities::AUR|v.0.0.2| Checking for updates for inner git directories."
base = Pathname.new(`pwd`.chomp)
pkgs = base.children.select {|f| File.directory? f }
ctr = 0
pkgs.each { |f|
    print "#{f}...  "
    dir = base.join f
    if not dir.join(".git").exist?
      next
    end
    Dir.chdir dir
    head_local = `git rev-parse --short HEAD` 
    head_new = `git rev-parse --short origin/master`
    if head_new == head_local
      puts "ok"
    else
      puts "update available to #{head_new}"
      ctr += 1
    end
}
if ctr > 0
  puts "(!!!) some packages have updates (!!!)"
else
  puts "Packages are up to date."
end
