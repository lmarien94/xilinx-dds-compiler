vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/xbip_utils_v3_0_9
vlib riviera/axi_utils_v2_0_5
vlib riviera/xbip_pipe_v3_0_5
vlib riviera/xbip_bram18k_v3_0_5
vlib riviera/mult_gen_v12_0_14
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_5
vlib riviera/xbip_dsp48_multadd_v3_0_5
vlib riviera/dds_compiler_v6_0_16

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap xbip_utils_v3_0_9 riviera/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 riviera/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 riviera/xbip_pipe_v3_0_5
vmap xbip_bram18k_v3_0_5 riviera/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 riviera/mult_gen_v12_0_14
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 riviera/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 riviera/xbip_dsp48_multadd_v3_0_5
vmap dds_compiler_v6_0_16 riviera/dds_compiler_v6_0_16

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dds.srcs/sources_1/bd/dds/ipshared/b65a" "+incdir+../../../../dds.srcs/sources_1/bd/dds/ipshared/b65a" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../dds.srcs/sources_1/bd/dds/ip/dds_proc_sys_reset_0_0/sim/dds_proc_sys_reset_0_0.vhd" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/cd0f/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_16 -93 \
"../../../../dds.srcs/sources_1/bd/dds/ipshared/a2f9/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../dds.srcs/sources_1/bd/dds/ip/dds_dds_compiler_0_0/sim/dds_dds_compiler_0_0.vhd" \
"../../../../dds.srcs/sources_1/bd/dds/sim/dds.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dds.srcs/sources_1/bd/dds/ipshared/b65a" "+incdir+../../../../dds.srcs/sources_1/bd/dds/ipshared/b65a" \
"../../../../dds.srcs/sources_1/bd/dds/ip/dds_clk_wiz_0_1/dds_clk_wiz_0_1_clk_wiz.v" \
"../../../../dds.srcs/sources_1/bd/dds/ip/dds_clk_wiz_0_1/dds_clk_wiz_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

