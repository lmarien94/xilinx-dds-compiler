----------------------------------------------------------------------------------
-- Company: /
-- Engineer: Levi Marien
-- Description: Testbench for the DDS-system
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tb_dds_wrapper is
-- port ();
end tb_dds_wrapper;

architecture Behavioral of tb_dds_wrapper is
  ------------------------
  -- component declaration
  ------------------------
  component dds_wrapper
    port (
      aclken             : in  std_logic;
      m_axis_data_tdata  : out std_logic_vector (15 downto 0);
      m_axis_data_tready : in  std_logic;
      m_axis_data_tvalid : out std_logic;
      reset              : in  std_logic;
      sys_clock          : in  std_logic
      );
  end component;

  ---------------------
  -- signal declaration
  ---------------------
  signal sys_clock : std_logic := '0';
  signal reset     : std_logic;
  signal aclken    : std_logic;

  signal m_axis_data_tdata  : std_logic_vector(15 downto 0);
  signal m_axis_data_tready : std_logic;
  signal m_axis_data_tvalid : std_logic;

  ---------------------------------------
  -- procedure to generate a clock signal
  ---------------------------------------
  procedure clk_gen(signal i_clk : out std_logic; constant freq : real) is
    constant period    : time := 1 sec / freq;        -- full period
    constant high_time : time := period / 2;          -- high time
    constant low_time  : time := period - high_time;  -- low time; always >= high_time
  begin
    -- check the arguments
    assert (high_time /= 0 fs) report "clk_plain: high time is zero; time resolution to large for frequency" severity failure;
    -- generate a clock cycle
    loop
      i_clk <= '1';
      wait for high_time;
      i_clk <= '0';
      wait for low_time;
    end loop;
  end procedure;

begin

  --------------------------------------------------
  -- Clock generation with concurrent procedure call
  --------------------------------------------------
  clk_gen(sys_clock, 100.00E6);
  -- Time resolution show
  assert false report "Time resolution: " & time'image(time'succ(0 fs)) severity note;


  dut : dds_wrapper
    port map(
      sys_clock          => sys_clock,
      reset              => reset,
      aclken             => aclken,
      m_axis_data_tdata  => m_axis_data_tdata,
      m_axis_data_tready => m_axis_data_tready,
      m_axis_data_tvalid => m_axis_data_tvalid);

  stimuli : process
  begin

    -- EDIT Adapt initialization as needed
    reset              <= '1';
    aclken             <= '0';
    m_axis_data_tready <= '0';

    -- Reset generation
    reset <= '0';
    wait for 100 ns;
    reset <= '1';

    -- EDIT Add stimuli here
    wait for 6500 ns;                   -- wait until the clock is stable

    aclken             <= '1';
    m_axis_data_tready <= '1';
    wait for 7000 ns;
    m_axis_data_tready <= '0';
    wait for 165 ns;
    m_axis_data_tready <= '1';

    wait;
  end process stimuli;
end Behavioral;
