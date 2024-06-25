/* Generated by Yosys 0.38 (git sha1 45a28179e, gcc 11.2.1 -fPIC -Os) */

module fabric_GJC16(\$auto$rs_design_edit.cc:472:add_wire_btw_prims$487 , \$auto$rs_design_edit.cc:472:add_wire_btw_prims$488 , \$auto$rs_design_edit.cc:472:add_wire_btw_prims$491 , \$auto$rs_design_edit.cc:472:add_wire_btw_prims$492 , \$auto$rs_design_edit.cc:906:execute$482 , \$auto$rs_design_edit.cc:906:execute$483 , \$auto$rs_design_edit.cc:906:execute$484 , \$auto$rs_design_edit.cc:906:execute$485 , \$auto$rs_design_edit.cc:906:execute$486 , \data_i_buf[0] , \data_i_buf[1] , \data_reg[0] , \data_reg[1] );
  output \$auto$rs_design_edit.cc:906:execute$484 ;
  output \$auto$rs_design_edit.cc:906:execute$483 ;
  output \$auto$rs_design_edit.cc:906:execute$482 ;
  output \data_reg[1] ;
  output \data_reg[0] ;
  input \$auto$rs_design_edit.cc:472:add_wire_btw_prims$487 ;
  output \$auto$rs_design_edit.cc:472:add_wire_btw_prims$491 ;
  input \$auto$rs_design_edit.cc:472:add_wire_btw_prims$488 ;
  input \data_i_buf[1] ;
  output \$auto$rs_design_edit.cc:906:execute$486 ;
  output \$auto$rs_design_edit.cc:472:add_wire_btw_prims$492 ;
  input \data_i_buf[0] ;
  output \$auto$rs_design_edit.cc:906:execute$485 ;
  wire \$auto$rs_design_edit.cc:906:execute$484 ;
  wire \$auto$rs_design_edit.cc:906:execute$483 ;
  wire \$auto$rs_design_edit.cc:906:execute$482 ;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:18.15-18.23" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:18.15-18.23" *)
  wire \data_reg[1] ;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:18.15-18.23" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:18.15-18.23" *)
  wire \data_reg[0] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:20.10-20.19" *)
  wire clk_buf_i;
  wire \$auto$rs_design_edit.cc:472:add_wire_btw_prims$487 ;
  wire \$auto$rs_design_edit.cc:472:add_wire_btw_prims$491 ;
  wire \$auto$rs_design_edit.cc:472:add_wire_btw_prims$488 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:22.16-22.26" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:22.16-22.26" *)
  wire \data_i_buf[1] ;
  wire \$auto$rs_design_edit.cc:906:execute$486 ;
  wire \$auto$rs_design_edit.cc:472:add_wire_btw_prims$492 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:22.16-22.26" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:22.16-22.26" *)
  wire \data_i_buf[0] ;
  wire \$auto$rs_design_edit.cc:472:add_wire_btw_prims$489 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:24.10-24.20" *)
  wire enable_buf;
  wire \$auto$rs_design_edit.cc:906:execute$485 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/15may/Validation/RTL_testcases/GJC-IO-Testcases/GJC16/results_dir/.././rtl/GJC16.v:23.10-23.21" *)
  wire reset_n_buf;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:98.11-98.64" *)
  DFFRE \$abc$209$auto$blifparse.cc:377:parse_blif$210  (
    .C(clk_buf_i),
    .D(\data_i_buf[0] ),
    .E(enable_buf),
    .Q(\data_reg[0] ),
    .R(reset_n_buf)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:98.11-98.64" *)
  DFFRE \$abc$209$auto$blifparse.cc:377:parse_blif$211  (
    .C(clk_buf_i),
    .D(\data_i_buf[1] ),
    .E(enable_buf),
    .Q(\data_reg[1] ),
    .R(reset_n_buf)
  );
  assign \$auto$rs_design_edit.cc:906:execute$482  = 1'h1;
  assign \$auto$rs_design_edit.cc:906:execute$483  = 1'h1;
  assign \$auto$rs_design_edit.cc:906:execute$484  = 1'h1;
  assign \$auto$rs_design_edit.cc:906:execute$485  = 1'h1;
  assign \$auto$rs_design_edit.cc:906:execute$486  = 1'h1;
  assign clk_buf_i = \$auto$rs_design_edit.cc:472:add_wire_btw_prims$489 ;
  assign reset_n_buf = \$auto$rs_design_edit.cc:472:add_wire_btw_prims$487 ;
  assign enable_buf = \$auto$rs_design_edit.cc:472:add_wire_btw_prims$488 ;
  assign \$auto$rs_design_edit.cc:472:add_wire_btw_prims$492  = \$auto$rs_design_edit.cc:472:add_wire_btw_prims$487 ;
  assign \$auto$rs_design_edit.cc:472:add_wire_btw_prims$491  = \$auto$rs_design_edit.cc:472:add_wire_btw_prims$488 ;
endmodule