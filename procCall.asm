.data 
.text
.globl main
main: 
  li   $v0, 5
  syscall # read a number
  add   $a0, $0, $v0
  li   $v0, 5
  syscall # read a number
  add   $a1, $0, $v0
  jal addProc # call addProc
  add  $a0, $0, $v0
  li   $v0, 1
  syscall   # print $a0
  li  $v0, 10
  syscall #exit
addProc: add $v0, $a0, $a1  
  jr  $ra # return
