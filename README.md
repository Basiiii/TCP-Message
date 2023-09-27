# Dart Byte Stream Sender

This is a simple Dart project that sends byte streams over a TCP connection. The project was developed during my time at a company that used TCP connections to send byte streams to control smart homes.

## Description

The project connects to a socket using a specified IP and port number. Once the connection is established, it sends a predefined message as a byte stream. After sending the message, it listens for a response from the server, prints it to the console, and then closes the socket. The program then waits for 5 seconds before ending.

## Authors

Enrique Rodrigues (Basi)

## Version History

* 0.1
    * Initial Release

## Acknowledgments

Inspiration, code snippets, etc.
* [stackoverflow.com](https://stackoverflow.com/questions/2878867/how-to-send-an-array-of-bytes-over-a-tcp-connection-java-programming)
* [pub.dev](https://pub.dev/documentation/tcp_socket_connection/latest/)
* [dart.dev](https://dart.dev/tutorials/language/streams)
* [dart.dev](https://dart.dev/articles/libraries/creating-streams)
