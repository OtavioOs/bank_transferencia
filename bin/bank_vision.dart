


import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {
  BankController bankController = BankController();
  int cconta = bankController.gettingContaCorrente();

  bankController.addAccount(id: 'Otavio', account: Account(name: 'Otavio de Andrade Alves', balance: 1000, idAuthentic: true, ccorrente: cconta));

  bankController.addAccount(id: 'Leandro', account: Account(name: 'Leandro Nojento', balance: 1000, idAuthentic: true, ccorrente: cconta));
  
  bool result = bankController.makeTransfer(idSender: 'Otavio', idReceiver: 'Leandro', amount: 300);
  print(bankController.viewData);
  print(result);
}
