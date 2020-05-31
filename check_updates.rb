require 'pathname'
puts "%|napit0k|Arch::Utilities::AUR| Checking git status for inner directories."
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
    status = `git status`.lines()[1]
    if status.include? "up to date"
      puts "ok"
    else
      puts "need update"
      ctr += 1
    end
}
if ctr > 0
  puts "(!!!) Some packages need to be updated (!!!)"
else
  puts "Packages are up to date."
end
