###############################################################################
# Created by write_sdc
# Sat Sep 21 13:38:56 2024
###############################################################################
current_design vmsu_8bit_top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 25.0000 
set_clock_uncertainty 0.2500 clk
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {p[15]}]
set_load -pin_load 0.1900 [get_ports {p[14]}]
set_load -pin_load 0.1900 [get_ports {p[13]}]
set_load -pin_load 0.1900 [get_ports {p[12]}]
set_load -pin_load 0.1900 [get_ports {p[11]}]
set_load -pin_load 0.1900 [get_ports {p[10]}]
set_load -pin_load 0.1900 [get_ports {p[9]}]
set_load -pin_load 0.1900 [get_ports {p[8]}]
set_load -pin_load 0.1900 [get_ports {p[7]}]
set_load -pin_load 0.1900 [get_ports {p[6]}]
set_load -pin_load 0.1900 [get_ports {p[5]}]
set_load -pin_load 0.1900 [get_ports {p[4]}]
set_load -pin_load 0.1900 [get_ports {p[3]}]
set_load -pin_load 0.1900 [get_ports {p[2]}]
set_load -pin_load 0.1900 [get_ports {p[1]}]
set_load -pin_load 0.1900 [get_ports {p[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 70.0000 [current_design]
