import 'controllers/bank_controller.dart';
import 'controllers/bank_controller_exception/exception.dart';
import 'models/account.dart';

void main() {
  
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
  try {

        bool result = bankController.makeTransfer(
        // pilha 4
        idSender: 123456,
        idReceiver: 987654,
        amount: 1300);
    print(result);

  } on VerifyIdSenderException catch (e) {
    print(e);
    print("Erro de ID Sender. ID '${e.idSender}' é inválido");
  } on VerifyIdReceiverException catch (e) {
    print(e);
    print("Erro de ID Receiver. ID '${e.idReceiver}' é inválido");
  } on VerifyIdAuthenticException catch (e) {
    print(e);
    print("Erro de Autenticação. ${e.idAuthentic}");
  } on VerifyAmountLowerException catch (e) {
    print(e);
    print(
      "Erro de valor.\n Transferir: ${e.amount}\n Valor em conta ${e.balance}\n");
  } on Exception {
    print('Algo deu errado.');
  }



}
