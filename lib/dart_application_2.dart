import 'dart:typed_data';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

/// Connects to a socket at the provided [ip] and [port] and 
/// sends a predefined message on connection.
///
/// After sending the message, it waits for a response and 
/// prints it to the console. It then closes the socket and waits
/// for 5 seconds before ending the program.
///
/// [ip] is the IP address of the socket.
/// [port] is the port number of the socket.
void main() async {
  const ip = '192.168.1.1';
  const port = 0001;
  
  final socket = await Socket.connect(ip, port);
  print('Connected to $ip:$port');

  // Listen to the received data event stream
  socket.listen((List<int> event) {
    print(utf8.decode(event));
  });

  // Send predefined message
  socket.add(_createMessage());

  // Close the socket
  socket.close();

  // Wait 5 seconds before ending the program
  await Future.delayed(Duration(seconds: 5));
}

/// Creates a predefined message as a [Uint8List].
Uint8List _createMessage() {
  var message = Uint8List(6);
  var bytedata = ByteData.view(message.buffer);

  bytedata.setUint8(0, 48); // 0
  bytedata.setUint8(1, 44); // ,
  bytedata.setUint8(2, 82); // R
  bytedata.setUint8(3, 44); // ,
  bytedata.setUint8(4, 0x0d); // CR
  bytedata.setUint8(5, 0x0a); // LF

  return message;
}
