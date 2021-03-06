class Wallets {
  final String imgpath;
  final String name;
  final String messageTitle;
  final String price;
  final String time;
  bool isOnline;

  Wallets({
    this.imgpath,
    this.name,
    this.messageTitle,
    this.price,
    this.time,
    this.isOnline,
  });
}

List<Wallets> walletList = [
  Wallets(
    isOnline: true,
    imgpath: 'assets/doctorapp/chat/chat1.png',
    name: 'Amily Watson',
    messageTitle: 'Money received from Credit Card',
    price: '+ \$45.30',
    time: '12:05 PM',
  ),
  Wallets(
    imgpath: 'assets/doctorapp/chat/chat2.png',
    name: 'Amily Watson',
    messageTitle: 'Money received from Credit Card',
    price: '+ \$45.30',
    time: '12:05 PM',
  ),
  Wallets(
    imgpath: 'assets/doctorapp/chat/chat3.png',
    name: 'Amily Watson',
    messageTitle: 'Money received from Credit Card',
    price: '+ \$45.30',
    time: '12:05 PM',
  ),
  Wallets(
    isOnline: true,
    imgpath: 'assets/doctorapp/chat/chat4.png',
    name: 'Amily Watson',
    messageTitle: 'Money received from Credit Card',
    price: '+ \$45.30',
    time: '12:05 PM',
  ),
  Wallets(
    imgpath: 'assets/doctorapp/chat/chat5.png',
    name: 'Amily Watson',
    messageTitle: 'Money received from Credit Card',
    price: '+ \$45.30',
    time: '12:05 PM',
  ),
];
