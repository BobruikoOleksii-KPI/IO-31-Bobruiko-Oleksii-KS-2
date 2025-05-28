vlib work
vcom KS_Mega_SM.vho

vsim work.KS_Mega_SM

add wave -radix unsigned sim:/KS_Mega_SM/a
add wave -radix unsigned sim:/KS_Mega_SM/b
add wave -radix binary   sim:/KS_Mega_SM/cin
add wave -radix unsigned sim:/KS_Mega_SM/sum
add wave -radix binary   sim:/KS_Mega_SM/cout

force a  "000000000001"
force b  "000000000010"
force cin 0
run 20ns

force a  "000000000101"
force b  "000000000110"
force cin 0
run 20ns

force a  "000011111111"
force b  "000000000001"
force cin 0
run 20ns

force a  "000010000000"
force b  "000010000000"
force cin 1
run 20ns

force a  "000000000000"
force b  "000000000000"
force cin 1
run 20ns

force a  "000011111111"
force b  "000011111111"
force cin 0
run 20ns

run 40ns