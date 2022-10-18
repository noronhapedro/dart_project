import 'package:dart_project/cliente.dart';

class SocioJuridica extends Cliente {
  String razaoSocial;
  String nomeFantasia;
  String cnpj;

  SocioJuridica({
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.cnpj,
    required super.endereco,
  }) : super(nomeFantasia, razaoSocial); 
}