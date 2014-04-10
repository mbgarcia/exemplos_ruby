require 'fileutils'
Dir.glob("**/*.java") do |filename|
  puts filename
  file = File.open(filename, 'r')
  number = file.readlines.size
  puts "  Linhas #{number}"
end 