class CardModel{
  String user;
  String cardNumber;
  String cardExpired;
  String cardType;
  int cardBackground;
  String cardElementTop;
  String cardElementBottom;

  CardModel({required this.user,required this.cardNumber,required this.cardExpired,required this.cardType,required this.cardBackground,required this.cardElementTop,required this.cardElementBottom});

}

List<CardModel> cards = cardData.map(
    (item) => CardModel(
      item['user'],
      item['cardNumber'],
      item['cardExpired'],
      item['cardType'],
      item['cardBackground'],
      item['cardElementTop'],
      item['cardElementBottom']
    ),
).toList();

var cardData = [
  {
    "user" :"Rakibul Islam",
    "cardNumber" : "**** **** **** 2434",
    "cardExpired" : "04-05-2023",
    "cardType" : "assets/svg/credit-card.svg",
    "cardBackground" : 0xFF1E1E99,
    "cardElementTop" : "assets/svg/top.svg",
    "cardElementBottom" : "assets/svg/bottom.svg"
  },
  {
    "user" :"Mahbuba Kahnom",
    "cardNumber" : "**** **** **** 2434",
    "cardExpired" : "04-05-2023",
    "cardType" : "assets/svg/credit-card.svg",
    "cardBackground" : 0xFF1E1E99,
    "cardElementTop" : "assets/svg/top.svg",
    "cardElementBottom" : "assets/svg/bottom.svg"
  },
];