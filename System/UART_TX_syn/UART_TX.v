/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Sep 12 02:26:47 2025
/////////////////////////////////////////////////////////////


module FSM ( CLK, RST, DATA_VALID, ser_done, ser_busy, PAR_EN, ser_en, busy, 
        Mux_Sel );
  output [2:0] Mux_Sel;
  input CLK, RST, DATA_VALID, ser_done, ser_busy, PAR_EN;
  output ser_en, busy;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [2:0] current_state;

  DFFRQX2M \current_state_reg[1]  ( .D(n13), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRX4M \current_state_reg[2]  ( .D(n14), .CK(CLK), .RN(RST), .Q(
        current_state[2]), .QN(n1) );
  DFFRX2M \current_state_reg[0]  ( .D(n15), .CK(CLK), .RN(RST), .Q(
        current_state[0]), .QN(n3) );
  NOR2X4M U3 ( .A(n3), .B(current_state[2]), .Y(Mux_Sel[0]) );
  OAI32X2M U4 ( .A0(n4), .A1(current_state[2]), .A2(current_state[1]), .B0(n8), 
        .B1(n3), .Y(n15) );
  AOI21X2M U5 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n2), .Y(
        Mux_Sel[1]) );
  NOR3X6M U6 ( .A(current_state[0]), .B(current_state[2]), .C(n2), .Y(
        Mux_Sel[2]) );
  NOR2BX2M U7 ( .AN(n11), .B(ser_done), .Y(n9) );
  AOI2BB1X2M U8 ( .A0N(n11), .A1N(n12), .B0(n9), .Y(n8) );
  NAND2X8M U9 ( .A(n6), .B(n1), .Y(busy) );
  AND2X2M U10 ( .A(n7), .B(n1), .Y(n11) );
  NOR2X2M U11 ( .A(n2), .B(n3), .Y(n7) );
  INVX4M U12 ( .A(current_state[1]), .Y(n2) );
  OAI2BB1X2M U13 ( .A0N(ser_busy), .A1N(Mux_Sel[0]), .B0(n5), .Y(ser_en) );
  AOI32X1M U14 ( .A0(DATA_VALID), .A1(n1), .A2(n2), .B0(n2), .B1(Mux_Sel[0]), 
        .Y(n5) );
  NOR2X4M U15 ( .A(current_state[0]), .B(current_state[1]), .Y(n6) );
  OAI22X1M U16 ( .A0(n8), .A1(n1), .B0(n9), .B1(n10), .Y(n14) );
  AOI2B1X1M U17 ( .A1N(PAR_EN), .A0(n11), .B0(Mux_Sel[2]), .Y(n10) );
  INVX2M U18 ( .A(DATA_VALID), .Y(n4) );
  NOR2X2M U19 ( .A(current_state[0]), .B(n2), .Y(n12) );
  OAI21BX1M U20 ( .A0(current_state[2]), .A1(n6), .B0N(n7), .Y(n13) );
endmodule


module Serializer ( CLK, RST, P_DATA, Ser_en, Ser_done, ser_busy, Ser_data );
  input [7:0] P_DATA;
  input CLK, RST, Ser_en;
  output Ser_done, ser_busy, Ser_data;
  wire   N30, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n30, n31,
         n32, n33, n17, n29, n34;
  wire   [7:0] shift_reg;
  wire   [2:0] bit_counter;

  DFFRX1M \shift_reg_reg[0]  ( .D(n30), .CK(CLK), .RN(RST), .Q(n29), .QN(n1)
         );
  DFFRQX2M Ser_done_reg ( .D(N30), .CK(CLK), .RN(RST), .Q(Ser_done) );
  DFFRQX2M \shift_reg_reg[7]  ( .D(n31), .CK(CLK), .RN(RST), .Q(shift_reg[7])
         );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n23), .CK(CLK), .RN(RST), .Q(shift_reg[6])
         );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n24), .CK(CLK), .RN(RST), .Q(shift_reg[5])
         );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n25), .CK(CLK), .RN(RST), .Q(shift_reg[4])
         );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n26), .CK(CLK), .RN(RST), .Q(shift_reg[3])
         );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n27), .CK(CLK), .RN(RST), .Q(shift_reg[2])
         );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n28), .CK(CLK), .RN(RST), .Q(shift_reg[1])
         );
  DFFRQX2M \bit_counter_reg[2]  ( .D(n32), .CK(CLK), .RN(RST), .Q(
        bit_counter[2]) );
  DFFRQX2M \bit_counter_reg[0]  ( .D(n22), .CK(CLK), .RN(RST), .Q(
        bit_counter[0]) );
  DFFRQX2M \bit_counter_reg[1]  ( .D(n21), .CK(CLK), .RN(RST), .Q(
        bit_counter[1]) );
  DFFRQX2M ser_busy_reg ( .D(n34), .CK(CLK), .RN(RST), .Q(ser_busy) );
  EDFFX1M Ser_data_reg ( .D(n29), .E(n17), .CK(CLK), .Q(Ser_data) );
  AND2X2M U3 ( .A(ser_busy), .B(RST), .Y(n17) );
  INVX4M U4 ( .A(n10), .Y(n2) );
  BUFX6M U5 ( .A(n33), .Y(n34) );
  OAI21X2M U6 ( .A0(n20), .A1(n6), .B0(n9), .Y(n33) );
  INVX4M U7 ( .A(n9), .Y(n5) );
  NAND2X2M U8 ( .A(n34), .B(n4), .Y(n7) );
  NOR2BX2M U9 ( .AN(n20), .B(n6), .Y(N30) );
  NAND2X2M U10 ( .A(ser_busy), .B(n34), .Y(n10) );
  NAND2X4M U11 ( .A(Ser_en), .B(n6), .Y(n9) );
  OAI2B1X2M U12 ( .A1N(shift_reg[1]), .A0(n34), .B0(n16), .Y(n28) );
  AOI22X1M U13 ( .A0(P_DATA[1]), .A1(n5), .B0(shift_reg[2]), .B1(n2), .Y(n16)
         );
  OAI2B1X2M U14 ( .A1N(shift_reg[2]), .A0(n34), .B0(n15), .Y(n27) );
  AOI22X1M U15 ( .A0(P_DATA[2]), .A1(n5), .B0(shift_reg[3]), .B1(n2), .Y(n15)
         );
  OAI2B1X2M U16 ( .A1N(shift_reg[3]), .A0(n34), .B0(n14), .Y(n26) );
  AOI22X1M U17 ( .A0(P_DATA[3]), .A1(n5), .B0(shift_reg[4]), .B1(n2), .Y(n14)
         );
  OAI2B1X2M U18 ( .A1N(shift_reg[4]), .A0(n34), .B0(n13), .Y(n25) );
  AOI22X1M U19 ( .A0(P_DATA[4]), .A1(n5), .B0(shift_reg[5]), .B1(n2), .Y(n13)
         );
  OAI2B1X2M U20 ( .A1N(shift_reg[5]), .A0(n34), .B0(n12), .Y(n24) );
  AOI22X1M U21 ( .A0(P_DATA[5]), .A1(n5), .B0(shift_reg[6]), .B1(n2), .Y(n12)
         );
  OAI2B1X2M U22 ( .A1N(shift_reg[6]), .A0(n34), .B0(n11), .Y(n23) );
  AOI22X1M U23 ( .A0(P_DATA[6]), .A1(n5), .B0(shift_reg[7]), .B1(n2), .Y(n11)
         );
  OAI21X2M U24 ( .A0(n34), .A1(n1), .B0(n18), .Y(n30) );
  AOI22X1M U25 ( .A0(P_DATA[0]), .A1(n5), .B0(shift_reg[1]), .B1(n2), .Y(n18)
         );
  OAI2B11X2M U26 ( .A1N(n7), .A0(n3), .B0(n8), .C0(n9), .Y(n21) );
  NAND3X2M U27 ( .A(n4), .B(n3), .C(n2), .Y(n8) );
  INVX2M U28 ( .A(bit_counter[1]), .Y(n3) );
  OAI221X1M U29 ( .A0(bit_counter[0]), .A1(n10), .B0(n34), .B1(n4), .C0(n9), 
        .Y(n22) );
  OAI2B1X2M U30 ( .A1N(bit_counter[2]), .A0(n19), .B0(n9), .Y(n32) );
  NOR2X2M U31 ( .A(bit_counter[1]), .B(n7), .Y(n19) );
  AO2B2X2M U32 ( .B0(P_DATA[7]), .B1(n5), .A0(shift_reg[7]), .A1N(n34), .Y(n31) );
  INVX2M U33 ( .A(ser_busy), .Y(n6) );
  NOR3X4M U34 ( .A(bit_counter[1]), .B(bit_counter[2]), .C(bit_counter[0]), 
        .Y(n20) );
  INVX2M U35 ( .A(bit_counter[0]), .Y(n4) );
endmodule


module parity_Calc ( CLK, RST, P_DATA, DATA_VALID, PAR_TYP, Par_bit );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, PAR_TYP;
  output Par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7;

  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(Par_bit), .A1N(n2), .Y(n7) );
  CLKINVX1M U3 ( .A(DATA_VALID), .Y(n2) );
  XOR3XLM U4 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U5 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
  XNOR2X1M U6 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U8 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  DFFRQX2M Par_bit_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(Par_bit) );
endmodule


module MUX ( CLK, RST, Mux_Sel, Ser_Data, par_Bit, TX_OUT );
  input [2:0] Mux_Sel;
  input CLK, RST, Ser_Data, par_Bit;
  output TX_OUT;
  wire   n5, n1, n2, n3;

  CLKBUFX8M U3 ( .A(n5), .Y(TX_OUT) );
  OAI2BB2X1M U4 ( .B0(n2), .B1(n1), .A0N(n1), .A1N(n3), .Y(n5) );
  NAND3BX2M U5 ( .AN(par_Bit), .B(Mux_Sel[2]), .C(Mux_Sel[1]), .Y(n3) );
  AOI21X2M U6 ( .A0(Ser_Data), .A1(Mux_Sel[1]), .B0(Mux_Sel[2]), .Y(n2) );
  INVX2M U7 ( .A(Mux_Sel[0]), .Y(n1) );
endmodule


module UART_TX ( CLK, RST, P_DATA, DATA_VALID, PAR_EN, PAR_TYP, BUSY, TX_OUT
 );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, PAR_EN, PAR_TYP;
  output BUSY, TX_OUT;
  wire   ser_done_top, ser_busy_top, ser_en_top, ser_data_top, par_bit_top;
  wire   [2:0] mux_sel_top;

  FSM U0_FSM ( .CLK(CLK), .RST(RST), .DATA_VALID(DATA_VALID), .ser_done(
        ser_done_top), .ser_busy(ser_busy_top), .PAR_EN(PAR_EN), .ser_en(
        ser_en_top), .busy(BUSY), .Mux_Sel(mux_sel_top) );
  Serializer U0_Serializer ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), .Ser_en(
        ser_en_top), .Ser_done(ser_done_top), .ser_busy(ser_busy_top), 
        .Ser_data(ser_data_top) );
  parity_Calc U0_Parity_Calc ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .DATA_VALID(DATA_VALID), .PAR_TYP(PAR_TYP), .Par_bit(par_bit_top) );
  MUX U0_MUX ( .CLK(CLK), .RST(RST), .Mux_Sel(mux_sel_top), .Ser_Data(
        ser_data_top), .par_Bit(par_bit_top), .TX_OUT(TX_OUT) );
endmodule

