void main(List<String> args) {
  var compras = ['leite', 'ovos', 'farinha'];
  compras.add('laranjas');
  compras.insert(0, 'pão');
  compras.removeAt(2);
  var quantElementos = compras.length;
  print(quantElementos);

  var cont = 0;
  while (cont < quantElementos) {
    print(compras[cont]);
    cont++;
  }

  var cont2 = 0;
  do {
    print(compras[cont2]);
    cont2++;
  } while (cont2 < quantElementos);

  for (var i = 0; i < quantElementos; i++) {
    print(compras[i]);
  }

  for (var compra in compras) {
    print(compra);
  }

  compras.forEach(print);

  imprimir();
  var fruta = atribuirFruta();
  imprimirFruta(fruta);
  var fruta2 = atribuirOutraFruta('Laranja');
  imprimirFruta(fruta2);
  imprimirUmaFruta('caqui');
  print(atribuirNovaFruta());
  imprimirDuasVezes(() {
    print('Olá');
  });
}

//sem R sem P
void imprimir() {
  print('Olá');
}

//com R com P
void imprimirFruta(String fruta) {
  print(fruta);
}

//com R sem P
String atribuirFruta() {
  return 'Uva';
}

//com R com P
String atribuirOutraFruta(String fruta) {
  return '$fruta';
}

void imprimirUmaFruta(String fruta, [int opcao = 1]) {
  print((opcao == 0) ? 'Não gosto de $fruta' : 'Gosto de $fruta');
}

String atribuirNovaFruta() => 'Ameixa';

void imprimirDuasVezes(Function funcao) {
  funcao();
  print('Bom dia');
}
