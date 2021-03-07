class BalanceDetail {
  final String imgpath;
  final String balancetype;
  final String date;
  final String accholder;
  final String amount;
  final String percentageinfo;
  bool withdraw;

  BalanceDetail(
      {this.imgpath,
      this.balancetype,
      this.date,
      this.accholder,
      this.amount,
      this.percentageinfo,
      this.withdraw});
}

List<BalanceDetail> balanceDetailList = [
  BalanceDetail(
    imgpath: 'assets/doctorapp/chat/ic_wallet_balance.png',
    balancetype: 'Wallet Balance',
    date: 'Today, 20 March',
    accholder: 'Top up',
    amount: '\$8,504',
    withdraw: true,
    percentageinfo: '+25% Increase from last week',
  ),
  BalanceDetail(
    imgpath: 'assets/doctorapp/chat/ic_chart.png',
    balancetype: 'INCOME',
    date: 'This week, 13-20 Feb',
    accholder: 'View Details',
    amount: '\$49,206',
    withdraw: false,
    percentageinfo: '-8% Decrease from last week',
  ),
];
