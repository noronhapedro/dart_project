import 'package:dart_project/endereco.dart';

class Cliente {
  String nome;
  String cpf = '';
  Endereco endereco;

  Cliente (this.nome, this.cpf, {required this.endereco});

}