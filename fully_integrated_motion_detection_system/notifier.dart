import 'package:mailer/mailer.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';



main() {
  
 var file = new File(Platform.script.toFilePath());
  Future<String> finishedReading = file.readAsString(encoding: ASCII);
  if(finishedReading.then((text)=="1"){
  
  
  
  
  print('Congratualtions, HAL 9000 detected Motion');
  var options = new GmailSmtpOptions()
    ..username = '$line(1)'
    ..password = '$line(2)'; 

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
}
