class CardModel {
  final String title;
  final String price;

  CardModel({required this.title, required this.price});
}

List<CardModel> cards = [
  CardModel(title: 'Daily Funds Cap (USDT)', price: '12.397.45'),
  CardModel(title: 'Total Funds Cap (USDT)', price: '307.45'),
];
