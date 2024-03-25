
class Account {
  String name;
  double balance;
  bool idAuthentic;
  int ccorrente;

  Account(
      {required this.name,
      required this.balance,
      required this.idAuthentic,
      required this.ccorrente});

  efitBalance({required value}) {
    balance = balance + value;
  }
}
