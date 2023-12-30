#!/bin/bash

# Find all _tb.v files in the current directory
testbenches=($(find . -type f -name '*_tb.v'))

# Delete old .vvp and .vcd files
find . -type f \( -name '*.vvp' -o -name '*.vcd' \) -delete

# Compile and run each testbench
for tb_file in "${testbenches[@]}"; do
  # Extract the testbench name without the extension
  tb_name=$(basename "${tb_file%.*}")

  # Compile the testbench
  iverilog -o "${tb_name}_tb.vvp" "$tb_file"

  # Run the simulation
  vvp "${tb_name}_tb.vvp"
done