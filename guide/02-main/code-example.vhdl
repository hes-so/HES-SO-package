-- Test 2: INPUT sX, pp
opCode <= "INPUT sX, pp    ";
code <= "00010";
cIn <=
A <=
B <=
wait for clockPeriod;
assert Y =  "00001010"
  report "test 2 INPUT wrong"
  severity note