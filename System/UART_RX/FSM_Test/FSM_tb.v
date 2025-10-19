`timescale 1ns/1ps

module FSM_RX_tb;

  // Inputs
  reg        CLK;
  reg        RST;
  reg        RX_IN;
  reg        PAR_EN;
  reg  [5:0] prescale;
  reg  [5:0] edge_cnt;
  reg  [3:0] bit_cnt;
  reg        par_err;
  reg        strt_glitch;
  reg        stp_err;

  // Outputs
  wire       data_valid;
  wire       enable;
  wire       dat_samp_en;
  wire       par_chk_en;
  wire       strt_chk_en;
  wire       stp_chk_en;
  wire       deser_en;

  // DUT instantiation
  FSM_RX dut (
    .CLK(CLK),
    .RST(RST),
    .RX_IN(RX_IN),
    .PAR_EN(PAR_EN),
    .prescale(prescale),
    .edge_cnt(edge_cnt),
    .bit_cnt(bit_cnt),
    .par_err(par_err),
    .strt_glitch(strt_glitch),
    .stp_err(stp_err),
    .data_valid(data_valid),
    .enable(enable),
    .dat_samp_en(dat_samp_en),
    .par_chk_en(par_chk_en),
    .strt_chk_en(strt_chk_en),
    .stp_chk_en(stp_chk_en),
    .deser_en(deser_en)
  );

  // Clock generation
  always #5 CLK = ~CLK; // 100MHz clock

  // Stimulus
  initial begin
    // Initialize
    CLK         = 0;
    RST         = 0;
    RX_IN       = 1;   // idle line
    PAR_EN      = 1;   // enable parity for testing
    prescale    = 6'd8; // example prescale
    edge_cnt    = 0;
    bit_cnt     = 0;
    par_err     = 0;
    strt_glitch = 0;
    stp_err     = 0;

    // Apply reset
    #12 RST = 1;

    // --- Test sequence ---

    // 1) Start bit
    #10 RX_IN = 0; 
    edge_cnt = prescale - 1; // force transition
    bit_cnt  = 0;

    #10 RX_IN = 0; 
    #10 RX_IN = 1;
    #10 RX_IN = 1;
    #10 RX_IN = 0; 
    #10 RX_IN = 0; 
     #10 RX_IN = 0; 
    #10 RX_IN = 0;
     #10 RX_IN = 1;    
    // 2) Data bits (simulate until 8 bits complete)
    //repeat (8) begin
    //  #10 edge_cnt = prescale - 1;
    //  bit_cnt = bit_cnt + 1;
    //end

    // 3) Parity bit
    #10 edge_cnt = prescale - 1;
    bit_cnt = 9;

    // 4) Stop bit
    #10 edge_cnt = 2; // chk_edge_err
    bit_cnt = 10;

    // 5) Error check
    #10 par_err = 0; stp_err = 0; RX_IN = 1;

    // 6) Immediate new start (back-to-back frame)
    #10 RX_IN = 0;

    // End sim
    #100 $stop;
  end

  // Monitor important signals
  initial begin
    $monitor("T=%0t | state? | RX_IN=%b bit_cnt=%0d edge_cnt=%0d | data_valid=%b deser_en=%b par_chk_en=%b",
             $time, RX_IN, bit_cnt, edge_cnt, data_valid, deser_en, par_chk_en);
  end

endmodule
