# Lab 3: Lev Meshores

### Three-bit wide 4-to-1 multiplexer

1. Listing of VHDL architecture from source file `mux_3bit_4to1.vhd`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of multiplexor is
begin
    B_greater_A_o 	 <= '1' when (b_i > a_i) else '0';
    B_equals_A_o 	 <= '1' when (b_i = a_i) else '0';
    B_less_A_o		 <= '1' when (b_i < a_i) else '0';
    
end architecture Behavioral;
```

2. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![your figure]()

3. Listing of pin assignments for the Nexys A7 board in `nexys-a7-50t.xdc`. **DO NOT list** the whole file, just your switch and LED settings.

```shell
##Switches
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { a_i[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { a_i[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { a_i[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { a_i[3] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]

set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { b_i[0] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { b_i[1] }]; #IO_L7N_T1_D10_14 Sch=sw[5]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { b_i[2] }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { b_i[3] }]; #IO_L5N_T0_D07_14 Sch=sw[7]
...

## LEDs
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { B_less_A_o }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { B_equals_A_o }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { B_greater_A_o }]; #IO_L17N_T2_A25_15 Sch=led[2]
A Vivado tutorial. Submit:
```
# Tutorial (how to setup project in vivado, adding sources/tb files/constrains and running simulation)

Your tutorial for Vivado design flow: project creation, adding source file, adding testbench file, adding XDC constraints file, running simulation.

Select File -> Project -> New...

![1](images3/s1.png)

Name project and select project location.

![2](images3/s2.png)

Select RTL Project since we are doing RTL design.

![3](images3/s3.png)

Add/create sources for project. 

![4](images3/s4.png)

Add physical and timing constrains and for our board. 

![5](images3/s5.png)

Select the part.

![6](images3/s6.png)

Finish.

![7](images3/s7.png)


