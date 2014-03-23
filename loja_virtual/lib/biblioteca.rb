class Biblioteca
  attr_accessor :livros
  
  def initialize
    @livros = {}
  end

  def adiciona(livro)
    @livros[livro.categoria] ||= []
    @livros[livro.categoria] << livro
  end

  def livros
    @livros.values.flatten
  end

  def to_s
    "Livros da biblioteca: #{@livros}"
  end

  def livros_por_categoria categoria, imprime_autor, imprime_titulo
    @livros[categoria].each do |livro|
      imprime_autor.call livro
      imprime_titulo.call livro
    end 
  end
end