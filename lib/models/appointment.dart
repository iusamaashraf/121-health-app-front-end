class Appointment {
  final String time;
  final String timeFormat;
  final String imgPath;
  final String name;
  final String appointmentTitle;
  final String status;
  final String appointmentType;
  bool isOnline;

  Appointment({
    this.isOnline,
    this.time,
    this.timeFormat,
    this.imgPath,
    this.name,
    this.appointmentTitle,
    this.status,
    this.appointmentType,
  });
}

List<Appointment> appointmentList = [
  Appointment(
      isOnline: true,
      time: '08:30',
      timeFormat: 'AM',
      imgPath: 'assets/doctorapp/chat/chat2.png',
      name: 'Amily Watson',
      appointmentTitle: 'Video Consultation',
      appointmentType: 'assets/doctorapp/chat/ic_symbol_video.png'),
  Appointment(
      isOnline: true,
      time: '11:30',
      timeFormat: 'AM',
      imgPath: 'assets/doctorapp/chat/chat3.png',
      name: 'Mordin Chereladan',
      appointmentTitle: 'Phone Consultation',
      appointmentType: 'assets/doctorapp/chat/ic_symbol_audio.png'),
  Appointment(
      time: '04:30',
      timeFormat: 'PM',
      imgPath: 'assets/doctorapp/chat/chat4.png',
      name: 'Raul Gupta',
      appointmentTitle: 'Video Consultation',
      status: 'Cancelled',
      appointmentType: 'assets/doctorapp/chat/ic_symbol_video.png'),
  Appointment(
      isOnline: true,
      time: '05:30',
      timeFormat: 'PM',
      imgPath: 'assets/doctorapp/chat/chat2.png',
      name: 'Ayush Kushwaha',
      appointmentTitle: 'Chat Conversation',
      status: 'No Show',
      appointmentType: 'assets/doctorapp/chat/ic_symbol_chat.png'),
  Appointment(
      time: '08:30',
      timeFormat: 'AM',
      imgPath: 'assets/doctorapp/chat/chat2.png',
      name: 'Anchal Sharma',
      appointmentTitle: 'Phone Consultation',
      appointmentType: 'assets/doctorapp/chat/ic_symbol_audio.png'),
];
