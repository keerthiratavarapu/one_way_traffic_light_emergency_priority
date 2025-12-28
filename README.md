# one_way_traffic_light_emergency_priority
One-way traffic light controller using Verilog HDL with emergency vehicle priority implemented on FPGA.
# One-Way Traffic Light Controller with Emergency Vehicle Priority

## Objective
To design and implement a one-way traffic light controller that provides immediate green signal priority to emergency vehicles using Verilog HDL and FPGA.

## Project Description
This project implements a single-road (one-way) traffic light control system using a Finite State Machine (FSM).
Under normal operation, the controller cycles through Green, Yellow, and Red signals with predefined timing.
When an emergency signal is detected, the controller immediately switches to the Green state, overriding the normal traffic sequence.

## System Design
- FSM-based control logic
- Clock division used to generate a slow clock from the FPGA system clock
- Emergency input has the highest priority

## State Timing
- Green  : 5 clock cycles
- Yellow : 2 clock cycles
- Red    : 5 clock cycles

## Inputs
- clk        : FPGA system clock
- reset      : Active-high reset
- emergency  : Emergency vehicle input signal

## Outputs
- green  : Green traffic signal
- yellow : Yellow traffic signal
- red    : Red traffic signal

## Tools and Technologies
- Verilog HDL
- Xilinx ISE
- Spartan-3E FPGA Board

## Applications
- One-way roads
- Toll gates
- Emergency access lanes
- Smart traffic signal prototypes

## Author
Keerthi

