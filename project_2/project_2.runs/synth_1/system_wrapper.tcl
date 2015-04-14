# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]

add_files E:/class/Project/project_2/project_2.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_100M_0/system_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_100M_0/system_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_100M_0/system_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_axi_gpio_0_2/system_axi_gpio_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_axi_gpio_0_2/system_axi_gpio_0_2.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_axi_gpio_0_2/system_axi_gpio_0_2_board.xdc]
set_property used_in_implementation false [get_files -all e:/class/Project/project_2/project_2.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all E:/class/Project/project_2/project_2.srcs/sources_1/bd/system/system_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files E:/class/Project/project_2/project_2.srcs/sources_1/bd/system/system.bd]

read_verilog -library xil_defaultlib E:/class/Project/project_2/project_2.srcs/sources_1/bd/system/hdl/system_wrapper.v
read_xdc E:/class/Project/project_2/project_2.srcs/constrs_1/imports/lab2/lab2.xdc
set_property used_in_implementation false [get_files E:/class/Project/project_2/project_2.srcs/constrs_1/imports/lab2/lab2.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/class/Project/project_2/project_2.cache/wt [current_project]
set_property parent.project_dir E:/class/Project/project_2 [current_project]
catch { write_hwdef -file system_wrapper.hwdef }
synth_design -top system_wrapper -part xc7z010clg400-1
write_checkpoint system_wrapper.dcp
report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb
