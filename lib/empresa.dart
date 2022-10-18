import 'dart:convert';
import 'dart:io';

class Empresa {
  String razaoSocial;
  String nomeFantasia;
  String cnpj;
  String endereco;
  String telefone;
  DateTime creationData = DateTime.now();
  
  Empresa({ required this.razaoSocial, required this.nomeFantasia, required this.cnpj, required this.endereco,
  required this.telefone});



}