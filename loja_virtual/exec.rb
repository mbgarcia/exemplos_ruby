# encoding: UTF-8
require File.expand_path('lib/loja_virtual')

def init
  @biblioteca = Biblioteca.new

  @teste_e_design = Livro.new "TDD", "Mauricio Aniche", "123454", 247, 60.9, :testes
  @web_design_responsivo = Livro.new "Design Responsivo", "Tárcio Zemel", "452565", 189, 70.9, :web_design
  @mesmo_isbn = Livro.new "Nao tem", "Marcelo Garcia", "123454", 20, 60.9, :testes
  @css = Livro.new "CSS", "Lucas Mazza", "121212", 20, 23.9, :web_design


  @biblioteca.adiciona(@teste_e_design)
  @biblioteca.adiciona(@web_design_responsivo)
  @biblioteca.adiciona(@mesmo_isbn)
  @biblioteca.adiciona(@css)

  imprime_autor = Proc.new do |livro| 
    p livro.autor
  end

  imprime_titulo = Proc.new do |livro| 
    p livro.titulo
  end

  @biblioteca.livros_por_categoria :testes, imprime_autor, imprime_titulo

  @relatorio = Relatorio.new @biblioteca

  p @relatorio.total

  p @relatorio.titulos
end

init
