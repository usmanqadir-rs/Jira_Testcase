create_design i_buf_i_delay_i_serdes_x3_dpa
add_design_file i_buf_i_delay_i_serdes_x3_dpa.v
set_top_module i_buf_i_delay_i_serdes_x3_dpa
# add_constraint_file constraints.sdc
add_constraint_file pin_constraints.pin
target_device 1VG28

analyze
synthesize
packing
place
route
sta
bitstream
