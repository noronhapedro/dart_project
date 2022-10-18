import 'dart:convert';
import 'dart:io';
import 'empresa.dart';
import 'cliente.dart';
import 'endereco.dart';
import 'socio_pfisica.dart';
import 'socio_pjuridica.dart';




  String varEmpresa(String variavel) {
    print("Digite $variavel da Empresa");
    return stdin.readLineSync()!;
  }

  String varEndereco(String variavel) {
    print("Digite $variavel da Empresa");
    return stdin.readLineSync()!;
  }

   /* Endereco listarEndereco(Type tipo) {
    String logradouro;
    int? numero;
    String complemento;
    String bairro;
    String cidade;
    String estado;
    String cep;

    logradouro = varEndereco("logradouro");
    numero = int.tryParse(varEndereco("numero"));
    complemento = varEndereco("complemento");
    bairro = varEndereco("bairro");
    cidade = varEndereco("cidade");
    estado = varEndereco("estado");
    cep = varEndereco("cep");

   return Endereco(logradouro, numero, complemento, bairro, cidade, estado, cep);

  } */

  void infoEmpresa(Empresa empresa) {
      print(" CNPJ: ${empresa.cnpj}, Razão Social: ${empresa.razaoSocial}, Nome Fantasia: ${empresa.nomeFantasia}, Telefone: ${empresa.telefone}, Cadastro: ${empresa.creationData}"
      );
  }


   void cadastrarEmpresa() {

    String razaoSocial = varEmpresa("Razao Social");
    String nomeFantasia = varEmpresa("Nome Fantasia");
    String cnpj = varEmpresa("CNPJ");
    String telefone = varEmpresa("Telefone");
   // Endereco endereco = listarEndereco(Empresa);

   listarEmpresas.add(Empresa(razaoSocial: razaoSocial, nomeFantasia: nomeFantasia, cnpj: cnpj, telefone: telefone, 
   endereco: ""));

  }

  empresaCNPJ() {

    print("Digite o CNPJ da empresa para obtenção dos dados: ");
    String entrada = stdin.readLineSync()!;

    for (var element in listarEmpresas) {
      if (element.cnpj == entrada) {
        infoEmpresa(element);
      }
    }
  }

   void mostrarEmpresas() {

    listarEmpresas.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial));

    print("Lista de Empresas Cadastradas:");
    for (var element in listarEmpresas) {
    print("CNPJ: ${element.cnpj} Data Cadastro: ${element.creationData} Razão Social: ${element.razaoSocial}");
   }
 }

  List<Empresa> listarEmpresas = [];
  
    void main() {
  
  String? textOption = "";

  do {
    print("1 - Cadastrar uma nova empresa");
    print("2 - Buscar Empresa cadastrada por CNPJ");
    print("3 - Listar Empresas cadastradas");
    print("0 - Sair");

    print("Digite sua opção: ");
    textOption = stdin.readLineSync(encoding: utf8);

    switch(textOption) {
      case "1":
          cadastrarEmpresa();
          print("Empresa cadastrada com sucesso!");
          break;
      case "2":
          empresaCNPJ();
          break;

      case "3": 
        mostrarEmpresas();
        break;

      case "0": 
        print("Obrigado pela preferência, volte sempre!");
        break;
    }

  } while (textOption != 0);
}