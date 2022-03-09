// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Mar  9 10:28:06 2022
// Host        : PC-635 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Documents/xmesho00/digital-electronics-1/labs/04-segment/display/display.sim/sim_1/impl/timing/xsim/tb_hex_7seg_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module hex_7seg
   (CG_OBUF,
    CF_OBUF,
    CE_OBUF,
    CD_OBUF,
    CC_OBUF,
    CB_OBUF,
    CA_OBUF,
    LED_OBUF);
  output CG_OBUF;
  output CF_OBUF;
  output CE_OBUF;
  output CD_OBUF;
  output CC_OBUF;
  output CB_OBUF;
  output CA_OBUF;
  input [3:0]LED_OBUF;

  wire CA_OBUF;
  wire CB_OBUF;
  wire CC_OBUF;
  wire CD_OBUF;
  wire CE_OBUF;
  wire CF_OBUF;
  wire CG_OBUF;
  wire [3:0]LED_OBUF;

  LUT4 #(
    .INIT(16'h2094)) 
    CA_OBUF_inst_i_1
       (.I0(LED_OBUF[3]),
        .I1(LED_OBUF[2]),
        .I2(LED_OBUF[0]),
        .I3(LED_OBUF[1]),
        .O(CA_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    CB_OBUF_inst_i_1
       (.I0(LED_OBUF[3]),
        .I1(LED_OBUF[2]),
        .I2(LED_OBUF[0]),
        .I3(LED_OBUF[1]),
        .O(CB_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    CC_OBUF_inst_i_1
       (.I0(LED_OBUF[3]),
        .I1(LED_OBUF[0]),
        .I2(LED_OBUF[1]),
        .I3(LED_OBUF[2]),
        .O(CC_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    CD_OBUF_inst_i_1
       (.I0(LED_OBUF[3]),
        .I1(LED_OBUF[2]),
        .I2(LED_OBUF[0]),
        .I3(LED_OBUF[1]),
        .O(CD_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    CE_OBUF_inst_i_1
       (.I0(LED_OBUF[3]),
        .I1(LED_OBUF[1]),
        .I2(LED_OBUF[2]),
        .I3(LED_OBUF[0]),
        .O(CE_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    CF_OBUF_inst_i_1
       (.I0(LED_OBUF[3]),
        .I1(LED_OBUF[2]),
        .I2(LED_OBUF[0]),
        .I3(LED_OBUF[1]),
        .O(CF_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    CG_OBUF_inst_i_1
       (.I0(LED_OBUF[3]),
        .I1(LED_OBUF[0]),
        .I2(LED_OBUF[2]),
        .I3(LED_OBUF[1]),
        .O(CG_OBUF));
endmodule

(* ECO_CHECKSUM = "e2a9a51f" *) 
(* NotValidForBitStream *)
module top
   (SW,
    LED,
    CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    AN);
  input [3:0]SW;
  output [7:0]LED;
  output CA;
  output CB;
  output CC;
  output CD;
  output CE;
  output CF;
  output CG;
  output [7:0]AN;

  wire [7:0]AN;
  wire CA;
  wire CA_OBUF;
  wire CB;
  wire CB_OBUF;
  wire CC;
  wire CC_OBUF;
  wire CD;
  wire CD_OBUF;
  wire CE;
  wire CE_OBUF;
  wire CF;
  wire CF_OBUF;
  wire CG;
  wire CG_OBUF;
  wire [7:0]LED;
  wire [3:0]LED_OBUF;
  wire [3:0]SW;

initial begin
 $sdf_annotate("tb_hex_7seg_time_impl.sdf",,,,"tool_control");
end
  OBUF \AN_OBUF[0]_inst 
       (.I(1'b1),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(1'b1),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(1'b1),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(1'b0),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(1'b1),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(1'b1),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(1'b1),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(1'b1),
        .O(AN[7]));
  OBUF CA_OBUF_inst
       (.I(CA_OBUF),
        .O(CA));
  OBUF CB_OBUF_inst
       (.I(CB_OBUF),
        .O(CB));
  OBUF CC_OBUF_inst
       (.I(CC_OBUF),
        .O(CC));
  OBUF CD_OBUF_inst
       (.I(CD_OBUF),
        .O(CD));
  OBUF CE_OBUF_inst
       (.I(CE_OBUF),
        .O(CE));
  OBUF CF_OBUF_inst
       (.I(CF_OBUF),
        .O(CF));
  OBUF CG_OBUF_inst
       (.I(CG_OBUF),
        .O(CG));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUFT \LED_OBUF[4]_inst 
       (.I(1'b0),
        .O(LED[4]),
        .T(1'b1));
  OBUFT \LED_OBUF[5]_inst 
       (.I(1'b0),
        .O(LED[5]),
        .T(1'b1));
  OBUFT \LED_OBUF[6]_inst 
       (.I(1'b0),
        .O(LED[6]),
        .T(1'b1));
  OBUFT \LED_OBUF[7]_inst 
       (.I(1'b0),
        .O(LED[7]),
        .T(1'b1));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(LED_OBUF[0]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(LED_OBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(LED_OBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(LED_OBUF[3]));
  hex_7seg hex2seg
       (.CA_OBUF(CA_OBUF),
        .CB_OBUF(CB_OBUF),
        .CC_OBUF(CC_OBUF),
        .CD_OBUF(CD_OBUF),
        .CE_OBUF(CE_OBUF),
        .CF_OBUF(CF_OBUF),
        .CG_OBUF(CG_OBUF),
        .LED_OBUF(LED_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
