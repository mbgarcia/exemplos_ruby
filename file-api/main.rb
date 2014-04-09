arquivo = File.new('file.txt')
puts "Size #{arquivo.size}"

File.open('file.txt', 'a') do |arquivo|
  arquivo.puts "Teste de insercao de linha"
end 

leitura = File.open('file.txt', 'r')
leitura.each do |linha|
  puts linha
end 