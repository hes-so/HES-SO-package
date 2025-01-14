-- Test 2: INPUT sX, pp
opCode <= "INPUT sX, pp    ";
code   <= "00010";
cIn    <= '0';
A      <= "11110000";
B      <= "00001111";
wait for clockPeriod;
assert Y =  "00001111"
  report "test 2 INPUT wrong"
  severity note
