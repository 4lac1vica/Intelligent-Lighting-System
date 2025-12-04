vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/processing_system7_vip_v1_0_19
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/fifo_generator_v13_2_10
vlib modelsim_lib/msim/axi_data_fifo_v2_1_30
vlib modelsim_lib/msim/axi_crossbar_v2_1_32
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_33
vlib modelsim_lib/msim/dist_mem_gen_v8_0_15
vlib modelsim_lib/msim/lib_pkg_v1_0_4
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_4
vlib modelsim_lib/msim/lib_fifo_v1_0_19
vlib modelsim_lib/msim/axi_quad_spi_v3_2_30
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_31

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 modelsim_lib/msim/processing_system7_vip_v1_0_19
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 modelsim_lib/msim/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 modelsim_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 modelsim_lib/msim/axi_crossbar_v2_1_32
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_33 modelsim_lib/msim/axi_gpio_v2_0_33
vmap dist_mem_gen_v8_0_15 modelsim_lib/msim/dist_mem_gen_v8_0_15
vmap lib_pkg_v1_0_4 modelsim_lib/msim/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 modelsim_lib/msim/lib_srl_fifo_v1_0_4
vmap lib_fifo_v1_0_19 modelsim_lib/msim/lib_fifo_v1_0_19
vmap axi_quad_spi_v3_2_30 modelsim_lib/msim/axi_quad_spi_v3_2_30
vmap axi_protocol_converter_v2_1_31 modelsim_lib/msim/axi_protocol_converter_v2_1_31

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"D:/SSC/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/SSC/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/SSC/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/SSC/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/SSC/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/SSC/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/SSC/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/SSC/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/SSC/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"D:/SSC/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/SSC/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/SSC/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/SSC/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0_2/sim/design_1_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0_2/sim/design_1_xbar_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0_2/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_PWM_Unit_0_0_2/sim/design_1_PWM_Unit_0_0.v" \
"../../../bd/design_1/ip/design_1_keyPad_Unit_0_0_2/sim/design_1_keyPad_Unit_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_33  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1_2/sim/design_1_axi_gpio_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_0_2_2/sim/design_1_axi_gpio_0_2.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_0_3_2/sim/design_1_axi_gpio_0_3.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_0_4_2/sim/design_1_axi_gpio_0_4.vhd" \

vlog -work dist_mem_gen_v8_0_15  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_19  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_30  -93  \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/2538/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_0_1/sim/design_1_axi_quad_spi_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+D:/SSC/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0_2/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

