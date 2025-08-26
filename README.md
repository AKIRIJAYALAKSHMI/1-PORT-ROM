# 1-PORT-ROM
1 PORT ROM design using verilog
Project Overview

This project implements a 1-Port Read-Only Memory (ROM) in Verilog.
The ROM stores predefined values (0–15) and supports synchronous read with enable and reset functionality.
It is commonly used in digital systems for storing lookup tables, constants, or instruction sets.

 Features

16 x 8 ROM (16 locations, 8-bit width)

Synchronous read on clock edge

Enable control (read data only when enabled)

Reset support (clears output to 0)

Preloaded ROM contents (0–15)

📂 File Structure
├── rom.v      # RTL design of 1-port ROM
├── tb.v       # Testbench for simulation
├── run.do     # ModelSim/Questa simulation script
└── README.md  # Project documentation

 Design Description

Inputs

clk → Clock input

rst → Reset (active high)

enable→ Enables ROM output

addr → 4-bit address (0–15)

Output

outdata → 8-bit ROM data

Operation

On reset → Output = 0

On rising edge of clock, if enable=1 → ROM returns mem[addr]

Simulation
Running with ModelSim/Questa
vlib work
vlog rom.v tb.v
vsim tb
add wave -r /*
run -all

📷 Waveform

<img width="1218" height="948" alt="Screenshot 2025-08-26 113758" src="https://github.com/user-attachments/assets/527fca55-01d4-4a08-9b8f-d42e39c9512e" />


📖 Future Improvements

Parameterized ROM depth and width

File-based initialization ($readmemh)

Dual-port ROM design
