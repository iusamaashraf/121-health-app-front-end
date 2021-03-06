class Inbox {
  final String imgpath;
  final String name;
  final String messageTitle;
  final String time;
  bool isonline;

  Inbox({
    this.isonline,
    this.imgpath,
    this.name,
    this.messageTitle,
    this.time,
  });
}

List<Inbox> inboxList = [
  Inbox(
    isonline: true,
    imgpath: 'assets/doctorapp/chat/ic_help_support.png',
    name: 'Help Support',
    messageTitle: 'Ask a question to help online',
    time: '8:30 AM',
  ),
  Inbox(
    isonline: true,
    imgpath: 'assets/doctorapp/chat/chat1.png',
    name: 'Anchal Raut',
    messageTitle: 'Ask a question to help online',
    time: '8:30 AM',
  ),
  Inbox(
    isonline: true,
    imgpath: 'assets/doctorapp/chat/chat2.png',
    name: 'Amily Watson',
    messageTitle: 'Ask a question to help online',
    time: '8:30 AM',
  ),
  Inbox(
    imgpath: 'assets/doctorapp/chat/chat3.png',
    name: 'Laraine Elvin',
    messageTitle: 'Ask a question to help online',
    time: '8:30 AM',
  ),
  Inbox(
    imgpath: 'assets/doctorapp/chat/chat4.png',
    name: 'Edwina Crossman',
    messageTitle: 'Ask a question to help online',
    time: '8:30 AM',
  ),
  Inbox(
    imgpath: 'assets/doctorapp/chat/chat5.png',
    name: 'Aanchal Billman',
    messageTitle: 'Ask a question to help online',
    time: '8:30 AM',
  ),
  Inbox(
    imgpath: 'assets/doctorapp/chat/chat6.png',
    name: 'Nicolette Billman',
    messageTitle: 'Ask a question to help online',
    time: '8:30 AM',
  ),
];
