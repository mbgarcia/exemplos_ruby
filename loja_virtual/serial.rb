require 'yaml'
require File.expand_path('lib/loja_virtual')


livro = Livro.new "TDD", "Mauricio Aniche", "123124", 256, 89.92, :testes

livro_serial = YAML.dump livro

p livro_serial

BancoDeArquivos.new.salva livro

livro_des = YAML.load livro_serial

p livro_des