class Livro

  attr_accessor :valor
  attr_reader :categoria, :isbn, :autor, :titulo

  def initialize(titulo, autor, isbn = "1", numero_de_paginas, preco, categoria)
    @titulo = titulo
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @valor = preco
    @categoria = categoria
  end

  def livros
    @livros.values.flatten
  end
  
  def to_s
    "Autor: #{@autor}, ISBN: #{@isbn}, Pág: #{@numero_de_paginas}, Categoria #{categoria}"
  end

  def eql? outro_livro
    @isbn == outro_livro.isbn
  end

  def hash
    @isbn.hash
  end

end