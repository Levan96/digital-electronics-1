-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Mar  9 10:28:35 2022
-- Host        : PC-635 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Documents/xmesho00/digital-electronics-1/labs/04-segment/display/display.sim/sim_1/synth/func/xsim/tb_hex_7seg_func_synth.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hex_7seg is
  port (
    CG_OBUF : out STD_LOGIC;
    CF_OBUF : out STD_LOGIC;
    CE_OBUF : out STD_LOGIC;
    CD_OBUF : out STD_LOGIC;
    CC_OBUF : out STD_LOGIC;
    CB_OBUF : out STD_LOGIC;
    CA_OBUF : out STD_LOGIC;
    LED_OBUF : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end hex_7seg;

architecture STRUCTURE of hex_7seg is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CB_OBUF_inst_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of CC_OBUF_inst_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of CD_OBUF_inst_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of CE_OBUF_inst_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of CF_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of CG_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
CA_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => LED_OBUF(3),
      I1 => LED_OBUF(2),
      I2 => LED_OBUF(0),
      I3 => LED_OBUF(1),
      O => CA_OBUF
    );
CB_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => LED_OBUF(3),
      I1 => LED_OBUF(2),
      I2 => LED_OBUF(0),
      I3 => LED_OBUF(1),
      O => CB_OBUF
    );
CC_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => LED_OBUF(3),
      I1 => LED_OBUF(0),
      I2 => LED_OBUF(1),
      I3 => LED_OBUF(2),
      O => CC_OBUF
    );
CD_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => LED_OBUF(3),
      I1 => LED_OBUF(2),
      I2 => LED_OBUF(0),
      I3 => LED_OBUF(1),
      O => CD_OBUF
    );
CE_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => LED_OBUF(3),
      I1 => LED_OBUF(1),
      I2 => LED_OBUF(2),
      I3 => LED_OBUF(0),
      O => CE_OBUF
    );
CF_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => LED_OBUF(3),
      I1 => LED_OBUF(2),
      I2 => LED_OBUF(0),
      I3 => LED_OBUF(1),
      O => CF_OBUF
    );
CG_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => LED_OBUF(3),
      I1 => LED_OBUF(0),
      I2 => LED_OBUF(2),
      I3 => LED_OBUF(1),
      O => CG_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    SW : in STD_LOGIC_VECTOR ( 3 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CA : out STD_LOGIC;
    CB : out STD_LOGIC;
    CC : out STD_LOGIC;
    CD : out STD_LOGIC;
    CE : out STD_LOGIC;
    CF : out STD_LOGIC;
    CG : out STD_LOGIC;
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
end top;

architecture STRUCTURE of top is
  signal CA_OBUF : STD_LOGIC;
  signal CB_OBUF : STD_LOGIC;
  signal CC_OBUF : STD_LOGIC;
  signal CD_OBUF : STD_LOGIC;
  signal CE_OBUF : STD_LOGIC;
  signal CF_OBUF : STD_LOGIC;
  signal CG_OBUF : STD_LOGIC;
  signal LED_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\AN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(0)
    );
\AN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(1)
    );
\AN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(2)
    );
\AN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => AN(3)
    );
\AN_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(4)
    );
\AN_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(5)
    );
\AN_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(6)
    );
\AN_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(7)
    );
CA_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CA_OBUF,
      O => CA
    );
CB_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CB_OBUF,
      O => CB
    );
CC_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CC_OBUF,
      O => CC
    );
CD_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CD_OBUF,
      O => CD
    );
CE_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CE_OBUF,
      O => CE
    );
CF_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CF_OBUF,
      O => CF
    );
CG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CG_OBUF,
      O => CG
    );
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(2),
      O => LED(2)
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(3),
      O => LED(3)
    );
\LED_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => LED(4),
      T => '1'
    );
\LED_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => LED(5),
      T => '1'
    );
\LED_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => LED(6),
      T => '1'
    );
\LED_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => LED(7),
      T => '1'
    );
\SW_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(0),
      O => LED_OBUF(0)
    );
\SW_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(1),
      O => LED_OBUF(1)
    );
\SW_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(2),
      O => LED_OBUF(2)
    );
\SW_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(3),
      O => LED_OBUF(3)
    );
hex2seg: entity work.hex_7seg
     port map (
      CA_OBUF => CA_OBUF,
      CB_OBUF => CB_OBUF,
      CC_OBUF => CC_OBUF,
      CD_OBUF => CD_OBUF,
      CE_OBUF => CE_OBUF,
      CF_OBUF => CF_OBUF,
      CG_OBUF => CG_OBUF,
      LED_OBUF(3 downto 0) => LED_OBUF(3 downto 0)
    );
end STRUCTURE;
