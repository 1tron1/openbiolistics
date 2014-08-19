import 'package:mailer/mailer.dart';


main() {
  print('Congratualtions, HAL 9000 detected Motion');
  var options = new GmailSmtpOptions()
    ..username = 'email@gmail.com'
    ..password = 'password'; 

  var emailTransport = new SmtpTransport(options);


  var envelope = new Envelope()
    ..from = 'email@gmail.com'
    ..recipients.add('recipient@gmail.com')
    ..subject = 'MOTION DETECTED!'
    
    ..text = 'MOTION IS DETECTED RIGHT NOW!';
  

  emailTransport.send(envelope)
    .then((success) => print('Members Alerted!'))
    .catchError((e) => print('Error occured: $e'));
}
