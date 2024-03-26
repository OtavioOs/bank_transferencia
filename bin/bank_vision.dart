import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {

  BankController bankController = BankController(); // Pilha 1
  int cconta = bankController.gettingContaCorrente();

  bankController.addAccount( // pinha 2 
      id: 123456,
      account: Account(
          name: 'Otavio de Andrade Alves',
          balance: 1000,
          idAuthentic: true,
          ccorrente: cconta));

  bankController.addAccount( // pinha 3 
      id: 987654,
      account: Account(
          name: 'Leandro Nojento',
          balance: 1000,
          idAuthentic: true,
          ccorrente: cconta));

        bool result = bankController.makeTransfer( // pinha 4 
            idSender: 123456, idReceiver: 987654, amount: 300);
        print(result);
}
