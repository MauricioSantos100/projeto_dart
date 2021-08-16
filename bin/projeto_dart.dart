import 'dart:io';

void main(List<String> arguments) {
  print('Digite o primeiro numero:');
  var entradaNumero1 = stdin.readLineSync();
  var numero1 = double.parse(entradaNumero1);

  print('Digite o segundo numero:');
  var entradaNumero2 = stdin.readLineSync();
  var numero2 = double.parse(entradaNumero2);

  if (numero1 >= 0 && numero2 >= 0) {
    print(
        'Digite:\n (1) - Somar\n (2) - Subtrair\n (3) - Multiplicar\n (4) - Dividir');
    var entradaOpcao = stdin.readLineSync();
    var opcao = int.parse(entradaOpcao);
    if (opcao >= 1 && opcao <= 4) {
      var calculo = 0.0;
      var simbolo = '';
      if (opcao == 1) {
        simbolo = '+';
        calculo = numero1 + numero2;
      }
      if (opcao == 2) {
        simbolo = '-';
        calculo = numero1 - numero2;
      }
      if (opcao == 3) {
        simbolo = '*';
        calculo = numero1 * numero2;
      }
      if (opcao == 4) {
        simbolo = '/';
        calculo = numero1 / numero2;
      }
      print('$numero1 $simbolo $numero2 = $calculo');
    } else {
      print('Opção invalida! escolha uma numero entre 1 e 4.');
    }
  } else {
    print('Nenhum número pode ser menor que 0!');
  }
}
