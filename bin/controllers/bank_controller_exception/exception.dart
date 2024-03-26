class VerifyIdSenderException implements Exception {
  String report = "VerifyIdSenderException";
  int idSender;
  VerifyIdSenderException({required this.idSender});

  @override
  String toString(){
    return "$report\nID Sender Error : $idSender"; 
  }
}

class VerifyIdReceiverException implements Exception {
  String report = "VerifyIdReceiverException";
  int idReceiver;
  VerifyIdReceiverException({required this.idReceiver});

  @override
  String toString(){
    return "$report\nID Receiver Error : $idReceiver"; 
  }
}

class VerifyIdAuthenticException implements Exception {
  String report = "VerifyIdAuthenticException";
  bool idAuthentic;
  VerifyIdAuthenticException({required this.idAuthentic});

  @override
  String toString(){
    return "$report\nAuthenticated Error : $idAuthentic"; 
  }

}

class VerifyAmountLowerException implements Exception {
  String report = "VerifyAmountLowerException";
  int idSender;
  double balance;
  double amount;
  VerifyAmountLowerException({
    required this.idSender, 
    required this.balance, 
    required this.amount});

    @override
  String toString(){
    return "$report\nAmount Error : $amount"; 
  }

}
