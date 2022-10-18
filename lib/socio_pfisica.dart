import 'cliente.dart';

class SocioFisica extends Cliente {

  String nome;
  String cpf;


  SocioFisica({required this.nome, required this.cpf, required super.endereco}) : super(nome, cpf);
}