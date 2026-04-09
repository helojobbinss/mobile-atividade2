import 'livro.dart';

class Biblioteca {
  List<Livro> livros = [];

  void cadastrarLivro(String titulo, int anoPublicacao, String autor) {
    int id = livros.length + 1;
    Livro novoLivro = Livro(id, titulo, anoPublicacao, autor);
    livros.add(novoLivro);
  }

}