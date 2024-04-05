// -----------------------------------------------------------------------------
// Auto-Generated by:        __   _ __      _  __
//                          / /  (_) /____ | |/_/
//                         / /__/ / __/ -_)>  <
//                        /____/_/\__/\__/_/|_|
//                     Build your hardware, easily!
//                   https://github.com/enjoy-digital/litex
//
// Filename   : axi_dma_wrapper_v1_0.v
// Device     : gemini
// LiteX sha1 : --------
// Date       : 2024-04-05 15:37:24
//------------------------------------------------------------------------------
// This file is Copyright (c) 2022 RapidSilicon
//--------------------------------------------------------------------------------

`timescale 1ns / 1ps

//------------------------------------------------------------------------------
// Module
//------------------------------------------------------------------------------

module axi_dma_wrapper #(
	parameter IP_TYPE 		= "ADMA",
	parameter IP_VERSION 	= 32'h1, 
	parameter IP_ID 		= 32'h4543958
)
(    input  wire          clk,
    input  wire          rst,
    output wire          m_axi_awvalid,
    input  wire          m_axi_awready,
    output wire   [15:0] m_axi_awaddr,
    output wire    [1:0] m_axi_awburst,
    output wire    [7:0] m_axi_awlen,
    output wire    [2:0] m_axi_awsize,
    output wire          m_axi_awlock,
    output wire    [2:0] m_axi_awprot,
    output wire    [3:0] m_axi_awcache,
    output wire    [3:0] m_axi_awqos,
    output wire    [3:0] m_axi_awregion,
    output wire    [7:0] m_axi_awid,
    output wire          m_axi_awuser,
    output wire          m_axi_wvalid,
    input  wire          m_axi_wready,
    output wire          m_axi_wlast,
    output wire   [31:0] m_axi_wdata,
    output wire    [3:0] m_axi_wstrb,
    output wire          m_axi_wuser,
    input  wire          m_axi_bvalid,
    output wire          m_axi_bready,
    input  wire    [1:0] m_axi_bresp,
    input  wire    [7:0] m_axi_bid,
    input  wire          m_axi_buser,
    output wire          m_axi_arvalid,
    input  wire          m_axi_arready,
    output wire   [15:0] m_axi_araddr,
    output wire    [1:0] m_axi_arburst,
    output wire    [7:0] m_axi_arlen,
    output wire    [2:0] m_axi_arsize,
    output wire          m_axi_arlock,
    output wire    [2:0] m_axi_arprot,
    output wire    [3:0] m_axi_arcache,
    output wire    [3:0] m_axi_arqos,
    output wire    [3:0] m_axi_arregion,
    output wire    [7:0] m_axi_arid,
    output wire          m_axi_aruser,
    input  wire          m_axi_rvalid,
    output wire          m_axi_rready,
    input  wire          m_axi_rlast,
    input  wire    [1:0] m_axi_rresp,
    input  wire   [31:0] m_axi_rdata,
    input  wire    [7:0] m_axi_rid,
    input  wire          m_axi_ruser,
    output wire          m_axis_read_data_tvalid,
    output wire          m_axis_read_data_tlast,
    input  wire          m_axis_read_data_tready,
    output wire   [31:0] m_axis_read_data_tdata,
    output wire    [3:0] m_axis_read_data_tkeep,
    output wire    [7:0] m_axis_read_data_tid,
    output wire    [7:0] m_axis_read_data_tdest,
    output wire          m_axis_read_data_tuser,
    input  wire          s_axis_write_data_tvalid,
    input  wire          s_axis_write_data_tlast,
    output wire          s_axis_write_data_tready,
    input  wire   [31:0] s_axis_write_data_tdata,
    input  wire    [3:0] s_axis_write_data_tkeep,
    input  wire    [7:0] s_axis_write_data_tid,
    input  wire    [7:0] s_axis_write_data_tdest,
    input  wire          s_axis_write_data_tuser,
    input  wire   [15:0] s_axis_read_desc_addr,
    input  wire   [19:0] s_axis_read_desc_len,
    input  wire    [7:0] s_axis_read_desc_tag,
    input  wire    [7:0] s_axis_read_desc_id,
    input  wire    [7:0] s_axis_read_desc_dest,
    input  wire          s_axis_read_desc_user,
    input  wire          s_axis_read_desc_valid,
    output wire          s_axis_read_desc_ready,
    output wire    [7:0] m_axis_read_desc_status_tag,
    output wire    [3:0] m_axis_read_desc_status_error,
    output wire          m_axis_read_desc_status_valid,
    input  wire   [15:0] s_axis_write_desc_addr,
    input  wire   [19:0] s_axis_write_desc_len,
    input  wire    [7:0] s_axis_write_desc_tag,
    input  wire          s_axis_write_desc_valid,
    output wire          s_axis_write_desc_ready,
    output wire   [19:0] m_axis_write_desc_status_len,
    output wire    [7:0] m_axis_write_desc_status_tag,
    output wire    [7:0] m_axis_write_desc_status_id,
    output wire    [7:0] m_axis_write_desc_status_dest,
    output wire          m_axis_write_desc_status_user,
    output wire    [3:0] m_axis_write_desc_status_error,
    output wire          m_axis_write_desc_status_valid,
    input  wire          read_enable,
    input  wire          write_enable,
    input  wire          write_abort
);


//------------------------------------------------------------------------------
// Signals
//------------------------------------------------------------------------------

wire          sys_clk;
wire          sys_rst;
wire          aw_valid;
wire          aw_ready;
wire   [15:0] aw_payload_addr;
wire    [1:0] aw_payload_burst;
wire    [7:0] aw_payload_len;
wire    [2:0] aw_payload_size;
wire          aw_payload_lock;
wire    [2:0] aw_payload_prot;
wire    [3:0] aw_payload_cache;
reg     [3:0] aw_payload_qos = 4'd0;
reg     [3:0] aw_payload_region = 4'd0;
wire    [7:0] aw_param_id;
reg           aw_param_user = 1'd0;
wire          w_valid;
wire          w_ready;
wire          w_last;
wire   [31:0] w_payload_data;
wire    [3:0] w_payload_strb;
reg           w_param_user = 1'd0;
wire          b_valid;
wire          b_ready;
wire    [1:0] b_payload_resp;
wire    [7:0] b_param_id;
wire          b_param_user;
wire          ar_valid;
wire          ar_ready;
wire   [15:0] ar_payload_addr;
wire    [1:0] ar_payload_burst;
wire    [7:0] ar_payload_len;
wire    [2:0] ar_payload_size;
wire          ar_payload_lock;
wire    [2:0] ar_payload_prot;
wire    [3:0] ar_payload_cache;
reg     [3:0] ar_payload_qos = 4'd0;
reg     [3:0] ar_payload_region = 4'd0;
wire    [7:0] ar_param_id;
reg           ar_param_user = 1'd0;
wire          r_valid;
wire          r_ready;
wire          r_last;
wire    [1:0] r_payload_resp;
wire   [31:0] r_payload_data;
wire    [7:0] r_param_id;
wire          r_param_user;
wire          m_axis_valid;
wire          m_axis_ready;
wire          m_axis_last;
wire   [31:0] m_axis_payload_data;
wire    [3:0] m_axis_payload_keep;
wire    [7:0] m_axis_param_id;
wire    [7:0] m_axis_param_dest;
wire          m_axis_param_user;
wire          s_axis_valid;
wire          s_axis_ready;
wire          s_axis_last;
wire   [31:0] s_axis_payload_data;
wire    [3:0] s_axis_payload_keep;
wire    [7:0] s_axis_param_id;
wire    [7:0] s_axis_param_dest;
wire          s_axis_param_user;
wire   [15:0] dma_s_axis_read_desc_addr;
wire   [19:0] dma_s_axis_read_desc_len;
wire    [7:0] dma_s_axis_read_desc_tag;
wire    [7:0] dma_s_axis_read_desc_id;
wire    [7:0] dma_s_axis_read_desc_dest;
wire          dma_s_axis_read_desc_user;
wire          dma_s_axis_read_desc_valid;
wire          dma_s_axis_read_desc_ready;
wire    [7:0] dma_m_axis_read_desc_status_tag;
wire    [3:0] dma_m_axis_read_desc_status_error;
wire          dma_m_axis_read_desc_status_valid;
wire   [15:0] dma_s_axis_write_desc_addr;
wire   [19:0] dma_s_axis_write_desc_len;
wire    [7:0] dma_s_axis_write_desc_tag;
wire          dma_s_axis_write_desc_valid;
wire          dma_s_axis_write_desc_ready;
wire          dma_read_enable;
wire          dma_write_enable;
wire          dma_write_abort;
wire   [19:0] dma_m_axis_write_desc_status_len;
wire    [7:0] dma_m_axis_write_desc_status_tag;
wire    [7:0] dma_m_axis_write_desc_status_id;
wire    [7:0] dma_m_axis_write_desc_status_dest;
wire          dma_m_axis_write_desc_status_user;
wire    [3:0] dma_m_axis_write_desc_status_error;
wire          dma_m_axis_write_desc_status_valid;

//------------------------------------------------------------------------------
// Combinatorial Logic
//------------------------------------------------------------------------------

assign sys_clk = clk;
assign sys_rst = rst;
assign m_axi_awvalid = aw_valid;
assign m_axi_awaddr = aw_payload_addr;
assign m_axi_awburst = aw_payload_burst;
assign m_axi_awlen = aw_payload_len;
assign m_axi_awsize = aw_payload_size;
assign m_axi_awlock = aw_payload_lock;
assign m_axi_awprot = aw_payload_prot;
assign m_axi_awcache = aw_payload_cache;
assign m_axi_awqos = aw_payload_qos;
assign m_axi_awregion = aw_payload_region;
assign m_axi_awid = aw_param_id;
assign m_axi_awuser = aw_param_user;
assign aw_ready = m_axi_awready;
assign m_axi_wvalid = w_valid;
assign m_axi_wdata = w_payload_data;
assign m_axi_wstrb = w_payload_strb;
assign m_axi_wuser = w_param_user;
assign m_axi_wlast = w_last;
assign w_ready = m_axi_wready;
assign b_valid = m_axi_bvalid;
assign b_payload_resp = m_axi_bresp;
assign b_param_id = m_axi_bid;
assign b_param_user = m_axi_buser;
assign m_axi_bready = b_ready;
assign m_axi_arvalid = ar_valid;
assign m_axi_araddr = ar_payload_addr;
assign m_axi_arburst = ar_payload_burst;
assign m_axi_arlen = ar_payload_len;
assign m_axi_arsize = ar_payload_size;
assign m_axi_arlock = ar_payload_lock;
assign m_axi_arprot = ar_payload_prot;
assign m_axi_arcache = ar_payload_cache;
assign m_axi_arqos = ar_payload_qos;
assign m_axi_arregion = ar_payload_region;
assign m_axi_arid = ar_param_id;
assign m_axi_aruser = ar_param_user;
assign ar_ready = m_axi_arready;
assign r_valid = m_axi_rvalid;
assign r_payload_resp = m_axi_rresp;
assign r_payload_data = m_axi_rdata;
assign r_param_id = m_axi_rid;
assign r_param_user = m_axi_ruser;
assign r_last = m_axi_rlast;
assign m_axi_rready = r_ready;
assign m_axis_read_data_tvalid = m_axis_valid;
assign m_axis_ready = m_axis_read_data_tready;
assign m_axis_read_data_tlast = m_axis_last;
assign m_axis_read_data_tdata = m_axis_payload_data;
assign m_axis_read_data_tkeep = m_axis_payload_keep;
assign m_axis_read_data_tid = m_axis_param_id;
assign m_axis_read_data_tdest = m_axis_param_dest;
assign m_axis_read_data_tuser = m_axis_param_user;
assign s_axis_valid = s_axis_write_data_tvalid;
assign s_axis_write_data_tready = s_axis_ready;
assign s_axis_last = s_axis_write_data_tlast;
assign s_axis_payload_data = s_axis_write_data_tdata;
assign s_axis_payload_keep = s_axis_write_data_tkeep;
assign s_axis_param_id = s_axis_write_data_tid;
assign s_axis_param_dest = s_axis_write_data_tdest;
assign s_axis_param_user = s_axis_write_data_tuser;
assign dma_s_axis_read_desc_addr = s_axis_read_desc_addr;
assign dma_s_axis_read_desc_len = s_axis_read_desc_len;
assign dma_s_axis_read_desc_tag = s_axis_read_desc_tag;
assign dma_s_axis_read_desc_id = s_axis_read_desc_id;
assign dma_s_axis_read_desc_dest = s_axis_read_desc_dest;
assign dma_s_axis_read_desc_user = s_axis_read_desc_user;
assign dma_s_axis_read_desc_valid = s_axis_read_desc_valid;
assign s_axis_read_desc_ready = dma_s_axis_read_desc_ready;
assign m_axis_read_desc_status_tag = dma_m_axis_read_desc_status_tag;
assign m_axis_read_desc_status_error = dma_m_axis_read_desc_status_error;
assign m_axis_read_desc_status_valid = dma_m_axis_read_desc_status_valid;
assign dma_s_axis_write_desc_addr = s_axis_write_desc_addr;
assign dma_s_axis_write_desc_len = s_axis_write_desc_len;
assign dma_s_axis_write_desc_tag = s_axis_write_desc_tag;
assign dma_s_axis_write_desc_valid = s_axis_write_desc_valid;
assign s_axis_write_desc_ready = dma_s_axis_write_desc_ready;
assign m_axis_write_desc_status_len = dma_m_axis_write_desc_status_len;
assign m_axis_write_desc_status_tag = dma_m_axis_write_desc_status_tag;
assign m_axis_write_desc_status_id = dma_m_axis_write_desc_status_id;
assign m_axis_write_desc_status_dest = dma_m_axis_write_desc_status_dest;
assign m_axis_write_desc_status_user = dma_m_axis_write_desc_status_user;
assign m_axis_write_desc_status_error = dma_m_axis_write_desc_status_error;
assign m_axis_write_desc_status_valid = dma_m_axis_write_desc_status_valid;
assign dma_read_enable = read_enable;
assign dma_write_enable = write_enable;
assign dma_write_abort = write_abort;


//------------------------------------------------------------------------------
// Synchronous Logic
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Specialized Logic
//------------------------------------------------------------------------------

axi_dma #(
	.AXIS_DATA_WIDTH(32),
	.AXIS_DEST_ENABLE(1'd0),
	.AXIS_DEST_WIDTH(8),
	.AXIS_ID_ENABLE(1'd0),
	.AXIS_ID_WIDTH(8),
	.AXIS_LAST_ENABLE(1'd1),
	.AXIS_USER_ENABLE(1'd1),
	.AXIS_USER_WIDTH(1),
	.AXI_ADDR_WIDTH(16),
	.AXI_DATA_WIDTH(32),
	.AXI_ID_WIDTH(8),
	.AXI_MAX_BURST_LEN(16),
	.ENABLE_SG(1'd0),
	.ENABLE_UNALIGNED(1'd0),
	.IP_ID(IP_ID),
	.IP_TYPE(IP_TYPE),
	.IP_VERSION(IP_VERSION),
	.LEN_WIDTH(20),
	.TAG_WIDTH(8)
) axi_dma (
	.clk(sys_clk),
	.m_axi_arready(ar_ready),
	.m_axi_awready(aw_ready),
	.m_axi_bid(b_param_id),
	.m_axi_bresp(b_payload_resp),
	.m_axi_bvalid(b_valid),
	.m_axi_rdata(r_payload_data),
	.m_axi_rid(r_param_id),
	.m_axi_rlast(r_last),
	.m_axi_rresp(r_payload_resp),
	.m_axi_rvalid(r_valid),
	.m_axi_wready(w_ready),
	.m_axis_read_data_tready(m_axis_ready),
	.read_enable(dma_read_enable),
	.rst(sys_rst),
	.s_axis_read_desc_addr(dma_s_axis_read_desc_addr),
	.s_axis_read_desc_dest(dma_s_axis_read_desc_dest),
	.s_axis_read_desc_id(dma_s_axis_read_desc_id),
	.s_axis_read_desc_len(dma_s_axis_read_desc_len),
	.s_axis_read_desc_tag(dma_s_axis_read_desc_tag),
	.s_axis_read_desc_user(dma_s_axis_read_desc_user),
	.s_axis_read_desc_valid(dma_s_axis_read_desc_valid),
	.s_axis_write_data_tdata(s_axis_payload_data),
	.s_axis_write_data_tdest(s_axis_param_dest),
	.s_axis_write_data_tid(s_axis_param_id),
	.s_axis_write_data_tkeep(s_axis_payload_keep),
	.s_axis_write_data_tlast(s_axis_last),
	.s_axis_write_data_tuser(s_axis_param_user),
	.s_axis_write_data_tvalid(s_axis_valid),
	.s_axis_write_desc_addr(dma_s_axis_write_desc_addr),
	.s_axis_write_desc_len(dma_s_axis_write_desc_len),
	.s_axis_write_desc_tag(dma_s_axis_write_desc_tag),
	.s_axis_write_desc_valid(dma_s_axis_write_desc_valid),
	.write_abort(dma_write_abort),
	.write_enable(dma_write_enable),
	.m_axi_araddr(ar_payload_addr),
	.m_axi_arburst(ar_payload_burst),
	.m_axi_arcache(ar_payload_cache),
	.m_axi_arid(ar_param_id),
	.m_axi_arlen(ar_payload_len),
	.m_axi_arlock(ar_payload_lock),
	.m_axi_arprot(ar_payload_prot),
	.m_axi_arsize(ar_payload_size),
	.m_axi_arvalid(ar_valid),
	.m_axi_awaddr(aw_payload_addr),
	.m_axi_awburst(aw_payload_burst),
	.m_axi_awcache(aw_payload_cache),
	.m_axi_awid(aw_param_id),
	.m_axi_awlen(aw_payload_len),
	.m_axi_awlock(aw_payload_lock),
	.m_axi_awprot(aw_payload_prot),
	.m_axi_awsize(aw_payload_size),
	.m_axi_awvalid(aw_valid),
	.m_axi_bready(b_ready),
	.m_axi_rready(r_ready),
	.m_axi_wdata(w_payload_data),
	.m_axi_wlast(w_last),
	.m_axi_wstrb(w_payload_strb),
	.m_axi_wvalid(w_valid),
	.m_axis_read_data_tdata(m_axis_payload_data),
	.m_axis_read_data_tdest(m_axis_param_dest),
	.m_axis_read_data_tid(m_axis_param_id),
	.m_axis_read_data_tkeep(m_axis_payload_keep),
	.m_axis_read_data_tlast(m_axis_last),
	.m_axis_read_data_tuser(m_axis_param_user),
	.m_axis_read_data_tvalid(m_axis_valid),
	.m_axis_read_desc_status_error(dma_m_axis_read_desc_status_error),
	.m_axis_read_desc_status_tag(dma_m_axis_read_desc_status_tag),
	.m_axis_read_desc_status_valid(dma_m_axis_read_desc_status_valid),
	.m_axis_write_desc_status_dest(dma_m_axis_write_desc_status_dest),
	.m_axis_write_desc_status_error(dma_m_axis_write_desc_status_error),
	.m_axis_write_desc_status_id(dma_m_axis_write_desc_status_id),
	.m_axis_write_desc_status_len(dma_m_axis_write_desc_status_len),
	.m_axis_write_desc_status_tag(dma_m_axis_write_desc_status_tag),
	.m_axis_write_desc_status_user(dma_m_axis_write_desc_status_user),
	.m_axis_write_desc_status_valid(dma_m_axis_write_desc_status_valid),
	.s_axis_read_desc_ready(dma_s_axis_read_desc_ready),
	.s_axis_write_data_tready(s_axis_ready),
	.s_axis_write_desc_ready(dma_s_axis_write_desc_ready)
);

endmodule

// -----------------------------------------------------------------------------
//  Auto-Generated by LiteX on 2024-04-05 15:37:24.
//------------------------------------------------------------------------------
