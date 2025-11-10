class Pessoa {
  String _nome;
  int _idade;

  Pessoa(this._nome, this._idade);

  String getNome() {
    return this._nome;
  }

  void setNome(String nome) {
    this._nome = nome;
  }

  void apresentacao() {
    print("----------APRESENTAÇÃO-------------");
    print('NOME  : $_nome , IDADE : $_idade');
  }
}

class PessoaFisica extends Pessoa {
  String _cpf;

  PessoaFisica(this._cpf, String nome, int idade) : super(nome, idade);

  void apresentarCPF() {
    print("CPF   : $_cpf");
  }

  @override
  void apresentacao() {
    super.apresentacao();
    apresentarCPF();
  }
}

class PessoaJuridica extends Pessoa {
  String _cnpj;

  PessoaJuridica(this._cnpj, String nome, int idade) : super(nome, idade);

  void apresentarCNPJ() {
    print("CNPJ  : $_cnpj");
  }

  @override
  void apresentacao() {
    super.apresentacao();
    apresentarCNPJ();
  }
}

void main() {
  var pessoaF = PessoaFisica("123.456.789-00", "Thalisson", 18);
  var pessoaJ = PessoaJuridica("12.345.678/0001-99", "Lincoln", 28);

  pessoaF.apresentacao();
  print("\n");
  pessoaJ.apresentacao();
}
