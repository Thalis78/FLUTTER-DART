void main() {
  //   VARIAVEIS EM DART PODEM FUNCIONAR DE DUAS MANEIRAS A TIPAGEM SENDO NA ATRIBUIÇÃO, OU SEJA, TIPAGEM DINAMICA, OU ELA PODE SER TIPADA NA DECLARAÇÃO.

  int idade = 25;
  double altura = 1.75;
  String nome = "João";
  bool isEstudante = true;

  // VARIÁVEIS SEM TIPO EXPLÍCITO
  var cidade = "São Paulo";

  print("Nome: $nome");
  print("Idade: $idade");
  print("Altura: $altura");
  print("Cidade: $cidade");
  print("Estudante: $isEstudante");

  int a = 10;
  int b = 20;

  // OPERADORES ARITMETICOS
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);

  // OPERADORES DE COMPARAÇÃO
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
  print(a == b);
  print(a != b);

  // OPERADORES LÓGICOS
  bool c = true;
  bool d = false;

  print(c || d);
  print(c && d);
  print(!d);

  condicionais();
  repeticaoComFor();
  repeticaoComWhile();
  repeticaoComDoWhile();
  listas();
  dicionario();

  int soma1 = soma(10,10);

  print(soma1);
}

void condicionais() {
  int idade = 18;

  if (idade > 18) {
    print("Você é maior de idade");
  } else if (idade == 18) {
    print("Você é quase maior de idade");
  } else {
    print("Você é menor de idade");
  }
}

void repeticaoComFor() {
  for (int i = 1; i < 10; i++) {
    print('NUMERO: 0${i}');
  }
}

void repeticaoComWhile() {
  int i = 10;

  while (i <= 20) {
    print('NUMERO: ${i}');
    i++;
  }
}

void repeticaoComDoWhile() {
  int i = 21;

  do {
    print('NUMERO: ${i}');
    i++;
  } while (i <= 30);
}


void listas(){
  List<int> numeros = [1,2,3,4,5];
  
  print(numeros[0]);
  
  numeros.add(6);
  print(numeros);
  
  for(var num in numeros){
    print(num);
  }
}


void dicionario(){
    Map<String,dynamic> user = {
      'nome': 'Thalisson'
    };

    print(user['nome']);
}

void listarUsuarios() {
  List<Map<String, dynamic>> usuarios = [];

  Map<String, dynamic> usuario1 = {
    'nome': "Lincoln",
    'idade': 28,
  };

  Map<String, dynamic> usuario2 = {
    'nome': "Thalisson",
    'idade': 21,
  };

  usuarios.add(usuario1);
  usuarios.add(usuario2);

  print(usuarios);
}

// Função Lambda
int soma(int num1,int num2) => (num1 + num2);