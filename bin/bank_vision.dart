import 'dart:io';

import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {
  BankController bankController = BankController();
  int cconta = bankController.gettingContaCorrente();

  bankController.addAccount(
      id: 987654,
      account: Account(
          name: 'Otavio de Andrade Alves',
          balance: 1000,
          idAuthentic: true,
          ccorrente: cconta));

  bankController.addAccount(
      id: 123456,
      account: Account(
          name: 'Leandro Nojento',
          balance: 1000,
          idAuthentic: true,
          ccorrente: cconta));

  while (true) {
    print(
        'Escolha a Opção: \n 1 = Visualizar Minha Conta\n 2 = Visualizar Outras Conta\n 3 = Transferir\n 4 = Sair');
    String? escolha = stdin.readLineSync();
    switch (escolha) {
      case "1":
        print('Qual seu Nome completo:');
      //String? nome1 = stdin.readLineSync();

      case "2":
      case "3":
        bool result = bankController.makeTransfer(
            idSender: 987654, idReceiver: 12345, amount: 300);
        print(result);
      case "4":
        break;

      default:
    }
  }
}
