require 'fileutils'
Dir.glob("**/*.java") do |filename|
  puts filename
  novo = File.open(filename + 'copy', 'a')
  can_write = false
  f = File.open(filename).each do |linha|
    can_write = true if linha.include? "package"
    novo.puts linha if can_write
  end 

  FileUtils.mv(filename + 'copy', filename, :force => true)
end 