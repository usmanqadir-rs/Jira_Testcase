create_design BOOT_CLOCK_primitive_inst
target_device 1GVTC
add_include_path ./rtl
add_library_path ./rtl
add_library_ext .v .sv
add_design_file ./rtl/BOOT_CLOCK_primitive_inst.v
set_top_module BOOT_CLOCK_primitive_inst
analyze
synthesize delay
add_simulation_file ./sim/co_sim_tb/co_sim_BOOT_CLOCK_primitive_inst.v ./rtl/BOOT_CLOCK_primitive_inst.v
set_top_testbench co_sim_BOOT_CLOCK_primitive_inst
# Open the input file in read mode
set input_file [open "BOOT_CLOCK_primitive_inst/run_1/synth_1_1/synthesis/BOOT_CLOCK_primitive_inst\_post_synth.v" r]
# Read the file content
set file_content [read $input_file]
# Close the input file after reading
close $input_file
set modified_content [string map {"BOOT_CLOCK_primitive_inst(" "BOOT_CLOCK_primitive_inst_post_synth("} $file_content]
# Open the file again, this time in write mode to overwrite the old content
set output_file [open "BOOT_CLOCK_primitive_inst/run_1/synth_1_1/synthesis/BOOT_CLOCK_primitive_inst\_post_synth.v" w]
# Write the modified content back to the file
puts $output_file $modified_content
# Close the file
close $output_file
puts "Modification completed."
simulation_options compilation icarus gate
simulate gate icarus