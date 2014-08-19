import 'package:mailer/mailer.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';



main() {
  
   final file = new File('userdata.txt');
  Stream<List<int>> inputStream = file.openRead();

  inputStream
    // Decode to UTF8.
    .transform(UTF8.decoder)
    // Convert stream to individual lines.
    .transform(new LineSplitter())
    // Process results.
    .listen((String line) {
        print('$line: ${line.length} bytes');
      },
      onDone: () { print('File is now closed.'); },
      onError: (e) { print(e.toString()); });
}
  
  
  
  
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
