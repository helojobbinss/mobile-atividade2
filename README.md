# Mobile Atividade 2 - Sistema de Gerenciamento de Biblioteca

[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)

## Descrição

Este é um **aplicativo de linha de comando (CLI)** desenvolvido em **Dart** para gerenciamento de uma biblioteca. O sistema permite **cadastro, listagem, atualização e remoção** de livros de forma interativa.

**Disciplina:** Programação de Dispositivos Móveis - Engenharia de Software  
**Versão:** 1.0.0

## Funcionalidades

- **Cadastrar livro** (título, ano de publicação, autor)
- **Listar todos os livros** cadastrados
- **Atualizar informações** de um livro pelo ID
- **Remover livro** pelo ID
- **Menu interativo** com validação de entrada
- **Testes unitários** completos para todas as operações

## Como Executar

### Pré-requisitos
- [Dart SDK](https://dart.dev/get-dart) versão ^3.11.4 ou superior

### Passos
1. Clone o repositório:
   ```bash
   git clone <url-do-repositorio>
   cd mobile-atividade2
   ```

2. Execute o aplicativo:
   ```bash
   dart run bin/main.dart
   ```

3. Siga o menu interativo!

### Exemplo de Uso
```
Bem-vindo ao cadastro de livros!
Escolha uma opção:
1 - Cadastrar livro
2 - Listar livros
...

Digite o título do livro: Dart in Action
Digite o ano de publicação: 2023
Digite o autor: Alex Buckley

Livros cadastrados:
ID: 1, Título: Dart in Action, Ano: 2023, Autor: Alex Buckley
```

## Estrutura do Projeto

```
mobile-atividade2/
├── bin/
│   ├── main.dart          # Ponto de entrada - Menu principal
│   ├── biblioteca.dart    # Classe Biblioteca - Gerencia lista de livros
│   └── livro.dart         # Classe Livro - Modelo do livro
├── lib/
│   └── atividade2.dart    # Função auxiliar (não utilizada)
├── test/
│   └── atividade2_test.dart # Testes unitários
├── pubspec.yaml           # Dependências e configuração
├── README.md              # Este arquivo :)
└── TODO.md                # Progresso da tarefa
```

## Testes

Execute os testes unitários:

```bash
dart test
```

**Cobertura de testes:**
- Cadastro de livros (simples e múltiplos)
- Listagem vazia
- Remoção de livros
- Atualização de livros

## Desenvolvimento

- **Linguagem:** Dart 3.11.4+
- **Paradigma:** Orientação a Objetos
- **Gerenciador:** Dart Pub

## Notas Adicionais

- O arquivo `lib/atividade2.dart` contém uma função `calculate()` não utilizada no sistema principal.
- IDs dos livros são gerados automaticamente (incrementais).
- Persistência: Em memória (reinicia ao sair/executar novamente).

**Repositório para entrega da Atividade 2 da disciplina de Programação de Dispositivos Móveis.**

