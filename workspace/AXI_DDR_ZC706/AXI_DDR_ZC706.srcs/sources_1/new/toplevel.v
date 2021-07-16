`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2021 01:06:12 PM
// Design Name: 
// Module Name: toplevel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module toplevel(
    // System clock inputs (LVDS)
    input sys_clk_p, sys_clk_n, sys_rst,

    // Memory interface outputs
    inout[63:0] ddr3_dq,
    
    output[13:0] ddr3_addr,
    
    inout[7:0] ddr3_dqs_n,
    inout[7:0] ddr3_dqs_p,
    
    output[7:0] ddr3_dm,
    output[2:0] ddr3_ba,
    
    output[0:0] ddr3_ck_n, 
    output[0:0] ddr3_ck_p, 
    output[0:0] ddr3_cke, 
    output[0:0] ddr3_cs_n, 
    output[0:0] ddr3_odt,
    
    output ddr3_cas_n, 
    output ddr3_ras_n, 
    output ddr3_reset_n, 
    output ddr3_we_n, 
    output init_calib_complete,
    
    // Interface
    input[29:0] tr_address,
    input[63:0] tr_din,
    input tr_wvalid,
    input tr_rready,
    output reg[63:0] tr_dout,
    output reg tr_rvalid,
    input tr_mode,
    output reg tr_state,
    output reg[1:0] tr_resp,
    
    // Application interface ports
    output ui_clk, 
    output ui_clk_sync_rst
    
    );
    
    localparam WRITE = 1'b0;
    localparam READ = 1'b0;
    
    localparam READY = 1'b0;
    localparam BUSY = 1'b1;
    
    localparam OKAY = 1'b00;
    localparam EXOKAY = 1'b01;
    localparam SLVERR = 1'b10;
    localparam DECERR = 1'b11;
    
    // Application interface ports wires
    wire mmcm_locked;
    wire aresetn;
    wire app_sr_req;
    wire app_ref_req;
    wire app_zq_req;
    wire app_sr_active;
    wire app_ref_ack;  
    wire app_zq_ack;
    
    // AXI Slave Interface Write Address Ports wires
    reg[3:0] s_axi_awid;   
    reg[29:0] s_axi_awaddr; 
    reg[7:0] s_axi_awlen;  
    reg[2:0] s_axi_awsize; 
    reg[1:0] s_axi_awburst;
    reg[0:0] s_axi_awlock; 
    reg[3:0] s_axi_awcache;
    reg[2:0] s_axi_awprot; 
    reg[3:0] s_axi_awqos;  
    reg s_axi_awvalid;
    reg s_axi_awready;
    
    // AXI Slave Interface Write Data Ports wires
    reg[63:0] s_axi_wdata; 
    reg[7:0] s_axi_wstrb; 
    reg s_axi_wlast; 
    reg s_axi_wvalid;
    reg s_axi_wready;
    
    // AXI Slave Interface Write Response Ports wires
    wire[3:0] s_axi_bid;   
    wire[1:0] s_axi_bresp; 
    wire s_axi_bvalid;
    reg s_axi_bready;
    
    // AXI Slave Interface Read Address Ports wires
    reg[3:0] s_axi_arid;  
    reg[29:0] s_axi_araddr; 
    reg[7:0] s_axi_arlen;  
    reg[2:0] s_axi_arsize; 
    reg[1:0] s_axi_arburst;
    reg[0:0] s_axi_arlock; 
    reg[3:0] s_axi_arcache;
    reg[2:0] s_axi_arprot; 
    reg[3:0] s_axi_arqos;  
    reg s_axi_arvalid;
    reg s_axi_arready;
    
    // AXI Slave Interface Read Data Ports wires
    reg[3:0] s_axi_rid;   
    reg[63:0] s_axi_rdata; 
    reg[1:0] s_axi_rresp; 
    reg s_axi_rlast; 
    reg s_axi_rvalid;
    reg s_axi_rready;
    
  
    mig_7series_0 u_mig_7series_0 (


    // Memory interface ports
    .ddr3_addr                      (ddr3_addr),  // output [13:0]		ddr3_addr
    .ddr3_ba                        (ddr3_ba),  // output [2:0]		ddr3_ba
    .ddr3_cas_n                     (ddr3_cas_n),  // output			ddr3_cas_n
    .ddr3_ck_n                      (ddr3_ck_n),  // output [0:0]		ddr3_ck_n
    .ddr3_ck_p                      (ddr3_ck_p),  // output [0:0]		ddr3_ck_p
    .ddr3_cke                       (ddr3_cke),  // output [0:0]		ddr3_cke
    .ddr3_ras_n                     (ddr3_ras_n),  // output			ddr3_ras_n
    .ddr3_reset_n                   (ddr3_reset_n),  // output			ddr3_reset_n
    .ddr3_we_n                      (ddr3_we_n),  // output			ddr3_we_n
    .ddr3_dq                        (ddr3_dq),  // inout [63:0]		ddr3_dq
    .ddr3_dqs_n                     (ddr3_dqs_n),  // inout [7:0]		ddr3_dqs_n
    .ddr3_dqs_p                     (ddr3_dqs_p),  // inout [7:0]		ddr3_dqs_p
    .init_calib_complete            (init_calib_complete),  // output			init_calib_complete


	.ddr3_cs_n                      (ddr3_cs_n),  // output [0:0]		ddr3_cs_n
    .ddr3_dm                        (ddr3_dm),  // output [7:0]		ddr3_dm
    .ddr3_odt                       (ddr3_odt),  // output [0:0]		ddr3_odt

    // Application interface ports
    .ui_clk                         (ui_clk),  // output			ui_clk
    .ui_clk_sync_rst                (ui_clk_sync_rst),  // output			ui_clk_sync_rst
    .mmcm_locked                    (mmcm_locked),  // output			mmcm_locked
    .aresetn                        (aresetn),  // input			aresetn
    .app_sr_req                     (app_sr_req),  // input			app_sr_req
    .app_ref_req                    (app_ref_req),  // input			app_ref_req
    .app_zq_req                     (app_zq_req),  // input			app_zq_req
    .app_sr_active                  (app_sr_active),  // output			app_sr_active
    .app_ref_ack                    (app_ref_ack),  // output			app_ref_ack
    .app_zq_ack                     (app_zq_ack),  // output			app_zq_ack

    // Slave Interface Write Address Ports
    .s_axi_awid                     (s_axi_awid),  // input [3:0]			s_axi_awid
    .s_axi_awaddr                   (s_axi_awaddr),  // input [29:0]			s_axi_awaddr
    .s_axi_awlen                    (s_axi_awlen),  // input [7:0]			s_axi_awlen
    .s_axi_awsize                   (s_axi_awsize),  // input [2:0]			s_axi_awsize
    .s_axi_awburst                  (s_axi_awburst),  // input [1:0]			s_axi_awburst
    .s_axi_awlock                   (s_axi_awlock),  // input [0:0]			s_axi_awlock
    .s_axi_awcache                  (s_axi_awcache),  // input [3:0]			s_axi_awcache
    .s_axi_awprot                   (s_axi_awprot),  // input [2:0]			s_axi_awprot
    .s_axi_awqos                    (s_axi_awqos),  // input [3:0]			s_axi_awqos
    .s_axi_awvalid                  (s_axi_awvalid),  // input			s_axi_awvalid
    .s_axi_awready                  (s_axi_awready),  // output			s_axi_awready

    // Slave Interface Write Data Ports
    .s_axi_wdata                    (s_axi_wdata),  // input [63:0]			s_axi_wdata
    .s_axi_wstrb                    (s_axi_wstrb),  // input [7:0]			s_axi_wstrb
    .s_axi_wlast                    (s_axi_wlast),  // input			s_axi_wlast
    .s_axi_wvalid                   (s_axi_wvalid),  // input			s_axi_wvalid
    .s_axi_wready                   (s_axi_wready),  // output			s_axi_wready

    // Slave Interface Write Response Ports
    .s_axi_bid                      (s_axi_bid),  // output [3:0]			s_axi_bid
    .s_axi_bresp                    (s_axi_bresp),  // output [1:0]			s_axi_bresp
    .s_axi_bvalid                   (s_axi_bvalid),  // output			s_axi_bvalid
    .s_axi_bready                   (s_axi_bready),  // input			s_axi_bready

    // Slave Interface Read Address Ports
    .s_axi_arid                     (s_axi_arid),  // input [3:0]			s_axi_arid
    .s_axi_araddr                   (s_axi_araddr),  // input [29:0]			s_axi_araddr
    .s_axi_arlen                    (s_axi_arlen),  // input [7:0]			s_axi_arlen
    .s_axi_arsize                   (s_axi_arsize),  // input [2:0]			s_axi_arsize
    .s_axi_arburst                  (s_axi_arburst),  // input [1:0]			s_axi_arburst
    .s_axi_arlock                   (s_axi_arlock),  // input [0:0]			s_axi_arlock
    .s_axi_arcache                  (s_axi_arcache),  // input [3:0]			s_axi_arcache
    .s_axi_arprot                   (s_axi_arprot),  // input [2:0]			s_axi_arprot
    .s_axi_arqos                    (s_axi_arqos),  // input [3:0]			s_axi_arqos
    .s_axi_arvalid                  (s_axi_arvalid),  // input			s_axi_arvalid
    .s_axi_arready                  (s_axi_arready),  // output			s_axi_arready

    // Slave Interface Read Data Ports
    .s_axi_rid                      (s_axi_rid),  // output [3:0]			s_axi_rid
    .s_axi_rdata                    (s_axi_rdata),  // output [63:0]			s_axi_rdata
    .s_axi_rresp                    (s_axi_rresp),  // output [1:0]			s_axi_rresp
    .s_axi_rlast                    (s_axi_rlast),  // output			s_axi_rlast
    .s_axi_rvalid                   (s_axi_rvalid),  // output			s_axi_rvalid
    .s_axi_rready                   (s_axi_rready),  // input			s_axi_rready
    
    // System Clock Ports
    .sys_clk_p                       (sys_clk_p),  // input				sys_clk_p
    .sys_clk_n                       (sys_clk_n),  // input				sys_clk_n
    .sys_rst                        (sys_rst) // input sys_rst
    );
    
    always @(posedge ui_clk or posedge ui_clk_sync_rst)
    begin
        if (ui_clk_sync_rst)
            begin
            s_axi_awready = 1'b0;
            s_axi_wready = 1'b0;
            s_axi_rready = 1'b0;
            
            tr_rvalid = 1'b0;
            
            s_axi_arvalid = 1'b0;
            s_axi_awvalid = 1'b0;
            s_axi_wvalid = 1'b0;
            
            tr_state = READY;
            end
        else
            begin
                case (tr_mode)
                    WRITE:
                        begin
                            if(tr_wvalid)
                            begin
                                s_axi_awlen = 8'b00000000;
                                s_axi_awsize = 3'b110;
                                s_axi_awburst = 2'b00;
                                s_axi_awaddr = tr_address;
                                s_axi_wdata = tr_din;
                                s_axi_wstrb = 8'b11111111;
                                s_axi_wlast = 1'b1;
                                s_axi_awvalid = 1'b1;
                                s_axi_wvalid = 1'b1;
                                s_axi_bready = 1'b1;
                                
                                tr_state = BUSY;
                            end
                        end
                    READ:
                        begin
                            if(tr_rready)
                                begin
                                s_axi_arlen = 8'b00000000;
                                s_axi_arsize = 3'b110;
                                s_axi_arburst = 2'b00;
                                s_axi_araddr = tr_address;
                                s_axi_arvalid = 1'b1;
                                s_axi_rready = 1'b1;
                                
                                tr_state = BUSY;
                            end
                        end
                endcase
            end        
    end
    
    // Transaction Response
    always @(posedge ui_clk)
    begin
        if(tr_mode === READ && s_axi_rvalid === 1'b1)
        begin
            tr_dout = s_axi_rdata;
            tr_rvalid = 1'b1;
            tr_resp = s_axi_rresp;
            tr_state = READY;
        end
        
        if(tr_mode === WRITE && s_axi_bvalid === 1'b1)
        begin
            tr_resp = s_axi_bresp;
            tr_state = READY;
        end
            
    end
    
endmodule
