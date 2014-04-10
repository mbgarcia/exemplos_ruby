class Biblioteca  
  def initialize
    @banco_de_arquivos = BancoDeArquivos.new
    @livros = @banco_de_arquivos.carrega
  end

  def adiciona(livro)
    salva livro do
      livros << livro
    end
  end

  def livros
    @livros
  end

  def to_s
    "Livros da biblioteca: #{@livros}"
  end

  def livros_por_categoria categoria
    livros.select {|livro| livro.categoria == categoria}
  end

private

  def salva livro
    @banco_de_arquivos.salva livro
    yield
  end  
end