# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/nolan/Documents/new_vivado/radspwi/ac_interface/ac_interface.cache/wt [current_project]
set_property parent.project_path /home/nolan/Documents/new_vivado/radspwi/ac_interface/ac_interface.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/nolan/Documents/new_vivado/radspwi/ac_interface/ac_interface.srcs/sources_1/new [current_project]
read_verilog -library xil_defaultlib -sv {
  /home/nolan/Documents/new_vivado/radspwi/ac_interface/ac_interface.srcs/sources_1/new/i2s_tx.sv
  /home/nolan/Documents/new_vivado/radspwi/ac_interface/ac_interface.srcs/sources_1/new/receive.sv
  /home/nolan/Documents/new_vivado/radspwi/ac_interface/ac_interface.srcs/sources_1/new/ac_interface.sv
}
synth_design -top ac_interface -part xc7z010clg400-1
write_checkpoint -noxdef ac_interface.dcp
catch { report_utilization -file ac_interface_utilization_synth.rpt -pb ac_interface_utilization_synth.pb }
