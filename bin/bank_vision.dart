import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {
  try {
    BankController bankController = BankController(); // Pilha 1
    int cconta = bankController.gettingContaCorrente();

    bankController.addAccount(
        // pilha 2
        id: 123456,
        account: Account(
            name: 'Otavio de Andrade Alves',
            balance: 1000,
            idAuthentic: true,
            ccorrente: cconta));

    bankController.addAccount(
        // pilha 3
        id: 987654,
        account: Account(
            name: 'Leandro Nojento',
            balance: 1000,
            idAuthentic: true,
            ccorrente: cconta));

    bool result = bankController.makeTransfer(
        // pilha 4
        idSender: 123456,
        idReceiver: 98765,
        amount: 300);
    print(result);
  } on Exception catch (e) {
    print(e.toString());
    
  }
}
