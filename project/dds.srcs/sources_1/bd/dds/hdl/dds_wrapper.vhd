--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
--Date        : Sun Sep  9 15:54:17 2018
--Host        : DESKTOP-LEVI running 64-bit major release  (build 9200)
--Command     : generate_target dds_wrapper.bd
--Design      : dds_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_wrapper is
  port (
    aclken : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end dds_wrapper;

architecture STRUCTURE of dds_wrapper is
  component dds is
  port (
    reset : in STD_LOGIC;
    aclken : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  end component dds;
begin
dds_i: component dds
     port map (
      aclken => aclken,
      m_axis_data_tdata(15 downto 0) => m_axis_data_tdata(15 downto 0),
      m_axis_data_tready => m_axis_data_tready,
      m_axis_data_tvalid => m_axis_data_tvalid,
      reset => reset,
      sys_clock => sys_clock
    );
end STRUCTURE;
