import 'livro.dart';

class Biblioteca {
  List<Livro> livros = [];

  void cadastrarLivro(String titulo, int anoPublicacao, String autor) {
    int id = livros.length + 1;
    Livro novoLivro = Livro(id, titulo, anoPublicacao, autor);
    livros.add(novoLivro);
  }
void listarLivros() {
    if (livros.isEmpty) {
      print('Nenhum livro cadastrado.');
    } else {
      print('Livros cadastrados:');
      for (var livro in livros) {
        livro.exibir();
      }
    }
  }

  void removerLivro(int id) {
    livros.removeWhere((livro) => livro.id == id);
  }

  void atualizarLivro(int id, String titulo, int anoPublicacao, String autor) {
    for (var livro in livros) {
      if (livro.id == id) {
        livro.atualizar(titulo, anoPublicacao, autor);
        return;
      }
    }
    print('Livro não encontrado.');
  }

}