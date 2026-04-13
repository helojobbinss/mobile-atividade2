class Livro {
  int id;
  String titulo;
  int anoPublicacao;
  String autor;

  Livro(this.id, this.titulo, this.anoPublicacao, this.autor);

void atualizar(String titulo, int anoPublicacao, String autor) {
    this.titulo = titulo;
    this.anoPublicacao = anoPublicacao;
    this.autor = autor;
  }

  void exibir() {
    print('ID: $id, Título: $titulo, Ano: $anoPublicacao, Autor: $autor');
  }



}
