import 'dart:io';
import 'biblioteca.dart';

void main() {
  Biblioteca biblioteca = Biblioteca();

  while (true) {
    print('\nBem-vindo ao cadastro de livros!');
    print('Escolha uma opção:');
    print('1 - Cadastrar livro');
    print('2 - Listar livros');
    print('3 - Atualizar livro');
    print('4 - Remover livro');
    print('5 - Sair');

    String? entrada = stdin.readLineSync();

    switch (entrada) {
      case '1':
        print('Digite o título do livro:');
        String titulo = stdin.readLineSync()!;

        print('Digite o ano de publicação:');
        int ano = int.parse(stdin.readLineSync()!);

        print('Digite o autor:');
        String autor = stdin.readLineSync()!;

        biblioteca.cadastrarLivro(titulo, ano, autor);
        break;

      case '2':
        biblioteca.listarLivros();
        break;

      case '3':
        print('Digite o ID do livro:');
        int id = int.parse(stdin.readLineSync()!);

        print('Novo título:');
        String titulo = stdin.readLineSync()!;

        print('Novo ano:');
        int ano = int.parse(stdin.readLineSync()!);

        print('Novo autor:');
        String autor = stdin.readLineSync()!;

        biblioteca.atualizarLivro(id, titulo, ano, autor);
        break;

      case '4':
        print('Digite o ID do livro:');
        int id = int.parse(stdin.readLineSync()!);

        biblioteca.removerLivro(id);
        break;

      case '5':
        print('Saindo...');
        exit(0);

      default:
        print('Opção inválida!');
    }
  }
}