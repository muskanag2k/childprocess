# childprocess

Ruby script which would start a given program and monitor its process. If the child process crashes, it should restart it again immediately. It -
  * take the whole command for the child program as command line arguments
  * should not suppress any output printed by the child process on stdout/stderr

exec command - ruby parentchild.rb ./sumofnums.rb 10 5 10 5
