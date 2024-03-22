import 'dart:math';

import '../models/account.dart';

class BankController{
  static final Map<String, Account> _database = {};

 addAccount({required String id, required Account account}){
  _database[id] = account;
 }

  get viewData{
    return _database;
  }

  gettingContaCorrente(){
    var random = Random();
    int cconta = random.nextInt(99999);
    return cconta;
  }

  bool verifyid(String ccorrente){
    return _database.containsKey(ccorrente);
  }

  bool makeTransfer({
    required String idSender,
    required String idReceiver,
    required double amount
  }) {
    if (!verifyid(idSender)) {
      return false;
    }

    if (!verifyid(idReceiver)) {
      return false;
    }

    Account accountSender = _database[idSender]!;
    
    Account accountReceiver = _database[idReceiver]!;

    if (!accountSender.idAuthentic) {
      return false;
    }

    if (accountSender.balance < amount) {
      return false;
    }

    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
    
  }

}