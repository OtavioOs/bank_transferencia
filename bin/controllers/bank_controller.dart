import 'dart:math';
import '../models/account.dart';
import '../controllers/bank_controller_exception/exception.dart';

class BankController {
  static final Map<int, Account> _database = {};

  addAccount({required int id, required Account account}) {
    _database[id] = account;
  }

  gettingContaCorrente() {
    var random = Random();
    int cconta = random.nextInt(99999);
    return cconta;
  }

  bool verifyid(int ccorrente) {
    return _database.containsKey(ccorrente);
  }

  bool makeTransfer(
      {required int idSender,
      required int idReceiver,
      required double amount}) {
    if (!verifyid(idSender)) {
      throw VerifyIdSenderException();
    }

    if (!verifyid(idReceiver)) {
      throw VerifyIdReceiverException();
    }

    Account accountSender = _database[idSender]!;

    Account accountReceiver = _database[idReceiver]!;

    if (!accountSender.idAuthentic) {
      throw VerifyIdAuthenticException();
    }

    if (accountSender.balance < amount) {
      throw VerifyAmountLowerException();
    }

    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }
}
