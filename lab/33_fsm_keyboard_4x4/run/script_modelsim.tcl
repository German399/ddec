
# create modelsim working library
vlib work

# compile all the Verilog sources
vlog     ../rtl/*.v +incdir+../rtl
vlog -sv ../tb/*.sv 

# open the testbench module for simulation
vsim -novopt work.testbench

# add all testbench signals to time diagram
add wave sim:/testbench/*
add wave sim:/testbench/dut/*

# run the simulation
run -all

# expand the signals time diagram
wave zoom full
