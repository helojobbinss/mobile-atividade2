import 'package:test/test.dart';
import '../bin/biblioteca.dart';

void main() {
  group('Biblioteca', () {

    test('Deve cadastrar um livro corretamente', () {
      final biblioteca = Biblioteca();

      biblioteca.cadastrarLivro('Teste', 2024, 'Autor Teste');

      expect(biblioteca.livros.length, 1);
      expect(biblioteca.livros.first.titulo, 'Teste');
    });

    test('Deve cadastrar múltiplos livros', () {
      final biblioteca = Biblioteca();

      biblioteca.cadastrarLivro('Livro 1', 2019, 'Autor 1');
      biblioteca.cadastrarLivro('Livro 2', 2021, 'Autor 2');

      expect(biblioteca.livros.length, 2);
    });

    test('Deve remover um livro', () {
      final biblioteca = Biblioteca();

      biblioteca.cadastrarLivro('Livro', 2020, 'Autor');
      biblioteca.removerLivro(1);

      expect(biblioteca.livros.isEmpty, true);
    });

    test('Deve atualizar um livro', () {
      final biblioteca = Biblioteca();

      biblioteca.cadastrarLivro('Antigo', 2000, 'Autor');
      biblioteca.atualizarLivro(1, 'Novo', 2024, 'Novo Autor');

      expect(biblioteca.livros.first.titulo, 'Novo');
    });

    test('Lista deve começar vazia', () {
      final biblioteca = Biblioteca();

      expect(biblioteca.livros.isEmpty, true);
    });

  });
}