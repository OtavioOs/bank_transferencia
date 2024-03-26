class VerifyIdSenderException implements Exception {
  int idSender;
  VerifyIdSenderException({required this.idSender});
}

class VerifyIdReceiverException implements Exception {
  int idReceiver;
  VerifyIdReceiverException({required this.idReceiver});
}

class VerifyIdAuthenticException implements Exception {
  bool idAuthentic;
  VerifyIdAuthenticException({required this.idAuthentic});
}

class VerifyAmountLowerException implements Exception {
  double balance;
  VerifyAmountLowerException({required this.balance});
}
