#!/usr/bin/perl

use strict;
use warnings;
use Socket;

my $port = 8080;
my $host = 'localhost';

socket(SERVER, PF_INET, SOCK_STREAM, getprotobyname('tcp')) or die "socket: $!";
setsockopt(SERVER, SOL_SOCKET, SO_REUSEADDR, pack("l", 1)) or die "setsockopt: $!";
bind(SERVER, sockaddr_in($port, inet_aton($host))) or die "bind: $!";
listen(SERVER, SOMAXCONN) or die "listen: $!";
print "server http://$host:$port/\n";

while (accept(CLIENT, SERVER)) {
  my $request = <CLIENT>;
  
  print CLIENT "HTTP/1.1 200 OK\r\n";
  print CLIENT "Content-Type: text/plain\r\n\r\n";
  print CLIENT "Hello, World!";
  close CLIENT;
}
close SERVER;
