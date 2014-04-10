class Biblioteca
  attr_accessor :livros
  
  def initialize
    @livros = {}
    @banco_de_arquivos = BancoDeArquivos.new
  end

  def adiciona(livro)
    @livros[livro.categoria] ||= []
    @livros[livro.categoria] << livro
    @banco_de_arquivos.salva livro
  end

  def livros
    @livros.values.flatten
  end

  def to_s
    "Livros da biblioteca: #{@livros}"
  end

  def livros_por_categoria categoria, bloco
    @livros[categoria].each do |livro|
      bloco.call livro
    end 
  end
end