class TransactionHistoryModel {
  final String title, date, price;
  final bool withDrawal;

  const TransactionHistoryModel(
      {required this.title,
      required this.date,
      required this.price,
      required this.withDrawal});
}
